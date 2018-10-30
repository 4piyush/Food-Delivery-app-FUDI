package com.Services;

public interface PdfGenerationInterface {
	void pdfGeneration(String orderId,String date,String deliveryLocation,String total,String discount);
}
