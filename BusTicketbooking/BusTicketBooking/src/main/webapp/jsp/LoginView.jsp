
<%@page import="in.co.bus.ticket.controller.UserRegistrationCtl"%>
<%@page import="in.co.bus.ticket.util.DataUtility"%>
<%@page import="in.co.bus.ticket.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%@ include file="Header.jsp" %>

<div class="container">    
   
    <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Login</div>
                  <b><font color="red"> <%=ServletUtility.getErrorMessage(request)%>
                </font></b>
                
              <b><font color="Green"> <%=ServletUtility.getSuccessMessage(request)%>
                </font></b>
            </div>  
            <div class="panel-body" >
                <form method="post" action="<%=ATBView.LOGIN_CTL%>">
                <jsp:useBean id="bean" class="in.co.bus.ticket.bean.UserBean"
            scope="request"></jsp:useBean>

		<% String uri=(String)request.getAttribute("uri");%>
		
              <input type="hidden" name="uri" value="<%=uri%>">
				<input type="hidden" name="id" value="<%=bean.getId()%>">
              <input type="hidden" name="createdBy" value="<%=bean.getCreatedBy()%>">
              <input type="hidden" name="modifiedBy" value="<%=bean.getModifiedBy()%>">
              <input type="hidden" name="createdDatetime" value="<%=DataUtility.getTimestamp(bean.getCreatedDatetime())%>">
              <input type="hidden" name="modifiedDatetime" value="<%=DataUtility.getTimestamp(bean.getModifiedDatetime())%>">
                      
                        
                        <div  class="form-group required">
                            <label  class="control-label col-md-4  requiredField">Login Id<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md  textinput textInput form-control"  maxlength="30" name="login" placeholder="Enter Login Id" style="margin-bottom: 10px" type="text" 
                                value="<%=DataUtility.getStringData(bean.getLogin())%>" />
                           		<font  color="red"><%=ServletUtility.getErrorMessage("login", request)%></font>
                            </div>
                        </div>
                       
                        <div  class="form-group required">
                            <label  class="control-label col-md-4  requiredField">Password<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 "> 
                                <input class="input-md textinput textInput form-control"  name="password" placeholder="Enter Confirm Password" style="margin-bottom: 10px" type="password" 
                                value="<%=DataUtility.getStringData(bean.getPassword()) %>" />
                                <font
                        color="red"> <%=ServletUtility.getErrorMessage("password", request)%></font>
                            </div>
                        </div>
                       
                       
                        <div class="form-group"> 
                            <div class="aab controls col-md-4 "></div>
                            <div class="controls col-md-8 ">
                                 <input type="submit" name="operation" value="<%=LoginCtl.OP_SIGN_IN%>" class="btn btn-primary btn btn-info"  /> or 
                                 <a href="<%=ATBView.USER_REGISTRATION_CTL%>" class="btn btn-primary btn btn-info" >Create Account</a>
                            </div>
                        </div> 
                            
                    </form>

                
            </div>
        </div>
    </div> 
</div>

<div style="margin-top: 198px">           
<%@ include file="Footer.jsp" %>
</div>
</body>
</html>