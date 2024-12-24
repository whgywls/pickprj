package com.kos.schedule.scheduler;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class DailyOrderSchedule {
	
	@Scheduled(cron = "* 7 1 * * *") 
	public void mainJob() {
		try {
			// 작업 내역 코딩
			System.out.println("google");
			//List<OrderInfoVO> list = service.selectOrderList();
			//…
		} catch (Exception e) {
			System.out.println("* Batch 시스템이 예기치 않게 종료되었습니다. Message: {}" 
									+ e.getMessage());
		}
	}
	
}
