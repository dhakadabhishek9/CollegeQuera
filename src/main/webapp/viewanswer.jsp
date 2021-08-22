<%@page import="com.adroit.collegequera.model.Answer"%>
<%@page import="java.util.List"%>
<%@page import="com.adroit.collegequera.dao.AnswerDao"%>
<%@include file="blocks/studentheader.jsp" %>

<%
    int qid = Integer.parseInt(request.getParameter("qid"));
    AnswerDao dao = new AnswerDao();
    List<Answer> list = dao.list(qid);
%>

<section class="section contact-me" data-section="section4">
        <div class="container">
          <div class="section-heading">
            <h2>Faculty Answers</h2>
            <div class="line-dec"></div>            
          </div>
           <table class='table'>
                <tr>
                    <th>Faculty Name</th>
                    <th>Answer</th>
                    <th>Date</th>                     
                </tr>
                 
                <% for (Answer ob : list) { %>
                <tr>
                    <td><%=ob.getUserName()%></td>
                    <td><%=ob.getAns()%></td>
                    <td><%=ob.getAnsDate()%></td>
                </tr>
                <% } %>
           </table>
        </div>
      </section>


<%@include file="blocks/footer.jsp" %>