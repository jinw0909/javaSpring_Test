package com.jinw0909.spring.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinw0909.spring.lesson06.dao.BookingDAO;
import com.jinw0909.spring.lesson06.model.Booking;

@Service
public class BookingBO {
	
	@Autowired
	private BookingDAO bookingDAO;
	
	public List<Booking> getBookingList() {
		return bookingDAO.selectBookingList();
	}
	
	public int deleteBooking(int id) {
		return bookingDAO.deleteBooking(id);
	}
	
	public int insertBooking(Booking booking) {
		return bookingDAO.insertBooking(booking);
	}
	
	public Booking getBooking(String name, String phoneNumber) {
		return bookingDAO.selectBooking(name, phoneNumber);
	}
}
