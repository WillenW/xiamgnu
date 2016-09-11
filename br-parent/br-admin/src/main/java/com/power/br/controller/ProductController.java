package com.power.br.controller;

import java.io.File;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.power.br.pojo.ProductPOJO;
import com.power.br.service.ProductService;

@Controller
@RequestMapping(value="p")
public class ProductController {

	@Autowired
	private ProductService productService;
	@RequestMapping(value="add-product",method={RequestMethod.GET})
	public String addProduct(HttpServletRequest request){
		return "product/product_set";
	}
	
	@RequestMapping(value="add-product",method={RequestMethod.POST})
	public String addProduct(@RequestParam("product_img") CommonsMultipartFile file,HttpServletRequest request,String name,String memo){
		String path = request.getSession().getServletContext().getRealPath("/")+"productImg";
		String type = file.getOriginalFilename();
            String fileName = new java.util.Date().getTime()+type.substring(type.indexOf(".",type.length()));  
            String savePath = "/productImg/"+fileName;
	        File targetFile = new File(path, fileName);  
	        if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        }
	        try {  
	        	file.transferTo(targetFile);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	        ProductPOJO pojo = new ProductPOJO();
	        pojo.setName(name);
	        pojo.setMemo(memo);
	        pojo.setImg_url(savePath);
	        productService.saveProduct(pojo);
		return "product/product_set";
	}
	@RequestMapping(value="product-list",method={RequestMethod.GET})
	public String productList(){
		return "product/product-list";
	}
}
