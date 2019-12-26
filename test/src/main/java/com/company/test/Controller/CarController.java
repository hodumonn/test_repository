package com.company.test.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.test.Service.CarService;
import com.company.test.VO.Car;

@Controller
public class CarController {
	
	@Autowired private CarService carService;
	
	/**
	 * view page
	 * @author hjseo
	 * @return String
	 */
	@RequestMapping(value="/car")
	public String carView() {
		
		return "/car/car"; 
	}
	
	/**
	 * create view page
	 * @author hjseo
	 * @return String
	 */
	@RequestMapping(value="/car/createCar", method=RequestMethod.GET)
	public String createCarView() {
		
		return "/car/createCar";
	}
	
	/**
	 * @author hjseo
	 * @param car
	 * @return String
	 */
	@RequestMapping(value="/car/createCar", method=RequestMethod.POST)
	@ResponseBody
	public String createCar(Car car) {
		
		int rst = carService.createCar(car);
		
		if(rst > 0) {
			return "success";
		}
		
		return "fail"; 
	}
	
	/**
	 * @author hjseo
	 * @param model
	 * @return 
	 */
	@RequestMapping(value="/car/carList", method=RequestMethod.GET)
	public String carListView(Model model) {
		
		List<Car> car_list = carService.getCarList();
		
		model.addAttribute("car_list", car_list);
		
		return "/car/carList";
	}
	
	@RequestMapping(value="/car/modifyCar", method=RequestMethod.GET)
	public String modifyCarView(Model model) {
		List<Car> car_list = carService.getCarList();
		
		model.addAttribute("car_list", car_list);
		
		return "/car/modifyCar";
	}
	
	@RequestMapping(value="/car/modifyCar", method=RequestMethod.POST)
	@ResponseBody
	public String modifyCar(Car car) {
		
		int rst = carService.modifyCar(car);
		
		if(rst > 0) {
			return "success";
		}
		
		return "fail";
	}
	
	@RequestMapping(value="/car/deleteCar", method=RequestMethod.GET)
	public String deleteCarView(Model model) {
		
		List<Car> car_list = carService.getCarList();
		
		model.addAttribute("car_list", car_list);
		
		return "/car/deleteCar";
	}
	
	@RequestMapping(value="/car/deleteCar/{car_key}", method=RequestMethod.DELETE)
	@ResponseBody
	public String deleteCar(@PathVariable int car_key) {
		
		int rst = carService.deleteCar(car_key);
		
		if(rst > 0) {
			return "success";
		}
		
		return "fail";
	}
}
