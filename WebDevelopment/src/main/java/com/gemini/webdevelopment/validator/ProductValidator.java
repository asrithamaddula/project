package com.gemini.webdevelopment.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.gemini.WebDevelopmentBackend.model.Product;

public class ProductValidator implements Validator 
{

	@Override
	public boolean supports(Class<?> clazz) 
	{
		
		return Product.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors error) 
	{
		Product product=(Product)target;
		if(product.getFile()==null || product.getFile().getOriginalFilename().equals(""))
		{
			error.rejectValue("file",null,"Please select an image file for upload");
			return;
		}
		
		if(!(product.getFile().getContentType().equals("image/jpeg") ||
				product.getFile().getContentType().equals("image/jpg") ||
				product.getFile().getContentType().equals("image/png") ||
				product.getFile().getContentType().equals("image/gif")
				))
		{
			error.rejectValue("file",null,"Please select an image file");
			return;
		}
		
	}

}
