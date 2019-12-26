package com.company.test.Service;

import java.util.List;

import com.company.test.VO.Car;

public interface CarService {

	int createCar(Car car);

	List<Car> getCarList();

	int modifyCar(Car car);

	int deleteCar(int car_key);

}
