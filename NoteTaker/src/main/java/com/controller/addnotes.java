package com.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.connection.connection;
import com.entity.form_entity;

/**
 * Servlet implementation class addnotes
 */
@WebServlet("/addnotes")
public class addnotes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addnotes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title=request.getParameter("title");
		String context=request.getParameter("context");
		
		SessionFactory sf=connection.getFactory();
		Session ss=sf.openSession();
		Transaction t=ss.beginTransaction();
		
		form_entity f=new form_entity();
		f.setNotetitle(title);
		f.setContend(context);
		f.setDate(new Date());
		ss.save(f);
		t.commit();
		
		
		
		ss.close();
		response.sendRedirect("add-notes.jsp");
	}

}
