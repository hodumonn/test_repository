package com.company.test.Mapper;

import java.util.List;

import com.company.test.VO.Car;

public interface CarDao {

	int insertCar(Car car);

	List<Car> selectCarList();

	int updateCar(Car car);

	int deleteCar(int car_key);

}
