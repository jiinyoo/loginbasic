package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.MemberDto;

@Mapper
public interface MemberLoginMapper {

	boolean useridCheck(String userid);
	void memberOk(MemberDto mdto);
	boolean loginOk(MemberDto mdto);

}
