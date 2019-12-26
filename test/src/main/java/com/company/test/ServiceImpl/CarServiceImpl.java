package com.company.test.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.test.Mapper.CarDao;
import com.company.test.Service.CarService;
import com.company.test.VO.Car;

@Service
public class CarServiceImpl implements CarService{

	@Autowired private CarDao carDao;
	
	@Override
	public int createCar(Car car) {
		return carDao.insertCar(car);
	}

	@Override
	public List<Car> getCarList() {
		return carDao.selectCarList();
	}

	@Override
	public int modifyCar(Car car) {
		return carDao.updateCar(car);
	}

	@Override
	public int deleteCar(int car_key) {
		return carDao.deleteCar(car_key);
	}

}
