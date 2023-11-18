package com.veg.pdw.production.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.veg.pdw.production.model.dto.Production;
import com.veg.pdw.prodution.service.ProductionService;

/**
 * Servlet implementation class RegisterProductionServlet
 */
@WebServlet("/production/register.do")
public class RegisterProductionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterProductionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String productionName=request.getParameter("production_name");
		int productionPrice=Integer.parseInt(request.getParameter("production_price"));
		int productionDiscount=Integer.parseInt(request.getParameter("production_discount"));
		String productionTag=request.getParameter("production_tag");
		String productionEnvironment=request.getParameter("production_environment");
		String productionPlace=request.getParameter("production_place");
		int productionStock=Integer.parseInt(request.getParameter("production_stock"));
		 Production p=Production.builder()
						.production_name(productionName)
						.discount(productionDiscount)
						.price(productionPrice)
						.tag(productionTag)
						.environment(productionEnvironment)
						.place(productionPlace)
						.stock(productionStock)
						.build();
		int result = new ProductionService().insertProduction(p);
		
		
		System.out.println(result);
		
		
		 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}