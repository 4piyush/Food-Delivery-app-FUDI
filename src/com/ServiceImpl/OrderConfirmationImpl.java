package com.ServiceImpl;
import com.Services.OrderConfirmationInterface;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.DateFormat;
public class OrderConfirmationImpl implements OrderConfirmationInterface {

	
	// to provide the date and time as the order is confirmed
	@Override
	public String orderConfirm() {
		// TODO Auto-generated method stub
		DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
        return (String) sdf.format(date).toString();
        
	}

}
