package com.order.service;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.order.bean.KakaoPayApprovalVO;
import com.order.bean.KakaoPayReadyVO;
import com.order.bean.OrderDTO;
import com.order.dao.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	private static final String HOST = "https://kapi.kakao.com";
	private KakaoPayReadyVO kakaoPayReadyVO;
	private KakaoPayApprovalVO kakaoPayApprovalVO;
	
	@Override
	public Map<String, Object> getOrderMenu(Map<String, Object> map) {
		return orderDAO.getOrderMenu(map);
	}

	@Override
	public String kakaoPayReady(OrderDTO orderDTO) {
		RestTemplate restTemplate = new RestTemplate();
		 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "097e6a1dc07daceb361d2f88ca3fa5fe");
        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        
        // 서버로 요청할 Body
        MultiValueMap<String, Object> params = new LinkedMultiValueMap<String, Object>();
        params.add("cid", "TC0ONETIME");
        params.add("partner_order_id", orderDTO.getSeqOrder());
        params.add("partner_user_id", orderDTO.getId());
        params.add("item_name", orderDTO.getMenuName());
        params.add("quantity", orderDTO.getQty());
        params.add("total_amount", orderDTO.getOrderPrice());
        params.add("tax_free_amount", "0");
        params.add("approval_url", "http://localhost:8080/bitproject/kakaoPaySuccess");
        params.add("cancel_url", "http://localhost:8080/bitproject/kakaoPayCancel");
        params.add("fail_url", "http://localhost:8080/bitproject/kakaoPaySuccessFail");
 
        HttpEntity<MultiValueMap<String, Object>> body = new HttpEntity<MultiValueMap<String, Object>>(params, headers);
 
        try {
            kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
            
            System.out.println("" + kakaoPayReadyVO);
            
            return kakaoPayReadyVO.getNext_redirect_pc_url();
 
        } catch (RestClientException e) {
            e.printStackTrace();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
        
        return "/pay";
	}
	
	public KakaoPayApprovalVO kakaoPayInfo(String pg_token) {    
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "097e6a1dc07daceb361d2f88ca3fa5fe");
        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
 
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("tid", kakaoPayReadyVO.getTid());
        params.add("partner_order_id", "1001"); //여기도 orderDTO.id 로 가지오 와야 하는지???? 
        params.add("partner_user_id", "gorany");
        params.add("pg_token", pg_token);
        params.add("total_amount", "2100");
        
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        
        try {
            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
          
            System.out.println("" + kakaoPayApprovalVO);
          
            return kakaoPayApprovalVO;
        
        } catch (RestClientException e) {
            e.printStackTrace();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
        
        return null;
    }

}
