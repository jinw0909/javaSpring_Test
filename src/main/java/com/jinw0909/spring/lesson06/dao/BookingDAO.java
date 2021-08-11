package com.jinw0909.spring.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jinw0909.spring.lesson06.model.Booking;

@Repository
public interface BookingDAO {
	public List<Booking> selectBookingList();
	
	public int deleteBooking(@Param("id") int id);
	
	public int insertBooking(Booking booking);
	
	public Booking selectBooking(
			@Param("name") String name, 
			@Param("phoneNumber") String phoneNumber
			);
}
