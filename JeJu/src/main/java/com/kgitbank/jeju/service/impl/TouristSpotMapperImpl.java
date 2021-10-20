package com.kgitbank.jeju.service.impl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.kgitbank.jeju.mapper.TouristSpotMapper;
import com.kgitbank.jeju.dto.TouristSpot;

public class TouristSpotMapperImpl  implements TouristSpotMapper{
	@Inject
	SqlSession sqlSession;
	
	// create
	@Override
	public void addTourist(TouristSpot touristSpot) {
		sqlSession.insert("board.addTourist",touristSpot);
	}
	
	@Override
	public TouristSpot listById(int tourist_spot_id) {
		return sqlSession.selectOne("board.listById",tourist_spot_id);
	}

	@Override
	public void updateTourist(TouristSpot touristSpot) {
		sqlSession.update("board.updateTourist", touristSpot);
	}

	@Override
	public void deleteTourist(int tourist_spot_id) {
		sqlSession.delete("board.deleteTourist",tourist_spot_id);
	}

	@Override
	public List<TouristSpot> listTourist()  {
		return sqlSession.selectList("board.list");
	}

	@Override
	public void addPositive(int tourist_spot_id) {
		sqlSession.update("board.addPositive",tourist_spot_id);
		
	}

	@Override
	public void addPositive(int tourist_spot_id, HttpSession session) {
	
	}
}
