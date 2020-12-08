package com.example.utils;

import com.example.dto.MyUserDTO;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.List;

public class SecurityUtil {

    public static List<String> getAuthorities() {
        List<String> result = new ArrayList<>();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        List<GrantedAuthority> authorities = (List<GrantedAuthority>) auth.getAuthorities();
        for (GrantedAuthority authority: authorities) {
            result.add(authority.getAuthority());
        }
        return result;
    }

    public static MyUserDTO getPrincipal() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        MyUserDTO myUser = (MyUserDTO) auth.getPrincipal();
        return myUser;
    }

}
