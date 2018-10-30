package com.Providers;

import java.sql.Connection;


import com.ServiceImpl.PdfGenerationImpl;

import com.Services.PdfGenerationInterface;

public class PdfGenerationProvider {
	public static PdfGenerationInterface getObject()
	{
		return new PdfGenerationImpl();
	}
}
