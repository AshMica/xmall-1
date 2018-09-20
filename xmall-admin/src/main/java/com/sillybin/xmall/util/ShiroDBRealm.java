package com.sillybin.xmall.util;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import com.alibaba.dubbo.config.annotation.Reference;
import com.sillybin.xmall.entity.User;
import com.sillybin.xmall.transmission.UserTransmission;

public class ShiroDBRealm extends AuthorizingRealm {
	@Reference(version="1.0.0")
	private UserTransmission userTransmission;

	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		return null;
	}

	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken userToken = (UsernamePasswordToken) token;
		String loginName = userToken.getUsername();
		char[] chrs = userToken.getPassword();
		if (loginName != null && !"".equals(loginName.trim()) && 
				chrs != null && chrs.length > 0) {
			userToken.setPassword(EncryptionUtil.encrypt(new String(userToken.getPassword())).toCharArray());
			try {
				User user = userTransmission.getUserByLoginName(loginName);
				if (user != null && ConstantsUtil.STATUS_YES.equals(user.getStatus().getStatusCode())) {
					SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(
							user.getLoginName(), user.getPassword(), getName());
					SecurityUtils.getSubject().getSession().setAttribute("user", user);
					return info;
				} else {
					throw new AuthenticationException("该用户无法登陆，请联系管理员");
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new AuthenticationException("系统异常");
			}
		} else {
			throw new AuthenticationException("请填写用户名或密码");
		}
	}
}
