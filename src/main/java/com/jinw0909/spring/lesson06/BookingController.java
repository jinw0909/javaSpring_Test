package com.jinw0909.spring.lesson06;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jinw0909.spring.lesson06.bo.BookingBO;
import com.jinw0909.spring.lesson06.model.Booking;

@RequestMapping("lesson06/test03")
@Controller
public class BookingController {
	
	@Autowired
	private BookingBO bookingBO;
	
	@GetMapping("/booking_list")
	public String bookingList(Model model) {
		
		List<Booking> bookingList = bookingBO.getBookingList();
		model.addAttribute("bookingList", bookingList);
		
		return "lesson06/bookingList";
	}
	
	@GetMapping("/booking_delete")
	@ResponseBody
	public Map<String, Boolean> deleteBooking(
			@RequestParam("id") int id 
			) {
		Map<String, Boolean> result = new HashMap<>();
		
		int count = bookingBO.deleteBooking(id);
		
		if (count > 0) {
			result.put("result",true);
		} else {
			result.put("result", false);
		}
		return result;
	}
	
	@GetMapping("/add_booking_view")
	public String addBookingView() {
		return "lesson06/insertBooking";
	}
	
	@GetMapping("/add_booking")
	@ResponseBody
	public Map<String, Boolean> addBooking(@ModelAttribute Booking booking, @RequestParam("date") String date) throws ParseException {
		
		booking.setState("대기중");
//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date newDate = format.parse(date);
//		booking.setDate(newDate);
		Map<String, Boolean> result = new HashMap<>();
		int count = bookingBO.insertBooking(booking);
		
		if (count > 0) {
			result.put("result", true);
		} else {
			result.put("result", false);
		}
		return result;
	}
	
	@GetMapping("/booking_main")
	public String mainView() {
		return "lesson06/bookingMain";
	}
	
	@GetMapping("/booking_search")
	@ResponseBody
	public Map<String, Object> selectBooking(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber
			) {
		Map<String, Object> data = new HashMap<>();
		
		Booking booking = bookingBO.getBooking(name, phoneNumber);
		
		if (booking != null) {
			data.put("result", booking);
		} else {
			throw new Error();
		}
		return data;
	}
}
