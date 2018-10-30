package com.ServiceImpl;

import java.io.*;

import com.Services.PdfGenerationInterface;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;

public class PdfGenerationImpl implements PdfGenerationInterface {

	
	
	//to generate the pdf after order confirmation
	@Override
	public void pdfGeneration(String orderId, String date, String deliveryLocation,String total, String discount) {
		try
		{
			Paragraph p=new Paragraph();
			Document document=new Document();
			FileOutputStream file = new FileOutputStream(new File("E://bill"+orderId+".pdf"));
			PdfWriter.getInstance(document, file);
			    document.addAuthor("Shubham");
			    document.addCreationDate();
			    document.addProducer();
			    document.addCreator("fudi");
			    document.addTitle("BillPDF");
			    document.open();
			    PdfPTable table = new PdfPTable(2);
			    table.setWidthPercentage(50);
			    table.setHorizontalAlignment(Element.ALIGN_LEFT);
			    table.setSpacingBefore(15);
		        PdfPCell cell;
		        cell = new PdfPCell(new Phrase(" Invoice "));
		        cell.setBackgroundColor(BaseColor.BLUE);
		        cell.setColspan(2);
		        table.addCell(cell);
		        table.addCell("Order ID");
		        table.addCell(orderId);
		        table.addCell("Delivery Address");
		        table.addCell(deliveryLocation);
		        table.addCell("Total");
		        table.addCell(total);
		        table.addCell("Discount");
		        table.addCell(discount);
		        
		        
			    document.add(table);
			    document.close();
			    file.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
}
