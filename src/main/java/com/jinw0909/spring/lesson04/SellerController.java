package com.jinw0909.spring.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jinw0909.spring.lesson04.bo.SellerBO;
import com.jinw0909.spring.lesson04.model.Seller;

@RequestMapping("/lesson04")
@Controller
public class SellerController {
	
	@Autowired
	private SellerBO sellerBO;
	
	@RequestMapping("/test02/1")
	public String addSellerView() {
		return "lesson04/addSeller";
	}
	
	@RequestMapping("/test02/add_seller")
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam("profileImageUrl") String profileImageUrl,
			@RequestParam("temperature") double temperature
			) {
		int count = sellerBO.addSeller(nickname, profileImageUrl, temperature);
		return "lesson04/addSuccess";
	}
	
	@GetMapping("/test02/seller_info")
	public String getSellerInfo(Model model, @RequestParam(value="id", required=false) Integer id) {
		if (id != null) {
			Seller seller = sellerBO.getSellerById(id);
			model.addAttribute("seller", seller);
			model.addAttribute("subject", "판매자 정보");
			return "lesson04/sellerInfo";
		} else {
			Seller seller = sellerBO.getLastSeller();
			model.addAttribute("seller", seller);
			model.addAttribute("subject", "판매자 정보");
			return "lesson04/sellerInfo";
		}
	}
	
}
