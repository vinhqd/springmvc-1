package com.example.service.impl;

import com.example.constants.SystemConstant;
import com.example.dto.MyUserDTO;
import com.example.entity.RoleEntity;
import com.example.entity.UserEntity;
import com.example.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findOneByUserNameAndStatus(
                username, SystemConstant.USER_STATUS_ACTIVE);
        if (userEntity == null) {
            throw new UsernameNotFoundException("User not found!");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (RoleEntity role: userEntity.getRoles()) {
            authorities.add(new SimpleGrantedAuthority(role.getCode()));
        }
        MyUserDTO myUser = new MyUserDTO(userEntity.getUserName(), userEntity.getPassword(), true,
                true, true, true, authorities);
        myUser.setFullName(userEntity.getFullName());
        return myUser;
    }

}
