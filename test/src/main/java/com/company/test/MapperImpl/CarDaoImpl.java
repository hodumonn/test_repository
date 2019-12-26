package com.company.test.MapperImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.test.Mapper.CarDao;
import com.company.test.VO.Car;

@Repository
public class CarDaoImpl implements CarDao{

	@Autowired private SqlSessionTemplate sqlTemplate;

	@Override
	public int insertCar(Car car) {
		return sqlTemplate.insert("insertCar", car);
	}

	@Override
	public List<Car> selectCarList() {
		return sqlTemplate.selectList("selectCarList");
	}

	@Override
	public int updateCar(Car car) {
		return sqlTemplate.update("updateCar", car);
	}

	@Override
	public int deleteCar(int car_key) {
		return sqlTemplate.update("deleteCar", car_key);
	}
}
