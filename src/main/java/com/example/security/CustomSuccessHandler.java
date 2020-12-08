package com.example.security;

import com.example.constants.SystemConstant;
import com.example.utils.SecurityUtil;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException, ServletException {
        String urlTarget = determineTargetUrl(authentication);
        if (response.isCommitted()) {
            return;
        }
        redirectStrategy.sendRedirect(request, response, urlTarget);
    }

    private String determineTargetUrl(Authentication authentication) {
        String url = "";
        List<String> roles = SecurityUtil.getAuthorities();
        if (isUser(roles)) {
            url = "/trang-chu";
        } else if (isAdmin(roles)) {
            url = "/admin";
        }
        return url;
    }

    private boolean isAdmin(List<String> roles) {
        return roles.contains(SystemConstant.ADMIN_ROLE);
    }

    private boolean isUser(List<String> roles) {
        return roles.contains(SystemConstant.USER_ROLE);
    }

    @Override
    public RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }

    @Override
    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }
}