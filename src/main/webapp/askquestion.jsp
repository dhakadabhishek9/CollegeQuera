<%@page import="com.adroit.collegequera.model.Question"%>
<%@page import="java.util.List"%>
<%@page import="com.adroit.collegequera.dao.QuestionDao"%>
<%@include file="blocks/studentheader.jsp"%>

<%
    QuestionDao qdao = new QuestionDao();
    List<Question> list = qdao.list(user.getUserid());
    
%>

 <section class="section contact-me" data-section="section4">
        <div class="container">
          <div class="section-heading">
            <h2>Ask Question</h2>
            <div class="line-dec"></div>            
          </div>
          <form id="contact" action="askqus" method="post">
        
          <div class="row">
                      
                
                    <div class="col-md-12">
                      <fieldset>
                        <textarea
                          name="qus"                          
                          class="form-control"
                          id="msg"
                          placeholder="Your Question..."
                          required>
                        </textarea>
                      </fieldset>
                    </div>
                    <div class='col-md-12'>
                        <br>                        
                    </div>  
                    <div class="col-md-12">
                      <fieldset>
                        <button type="submit" id="form-submit" class="button">
                         Send Question
                        </button>                        
                      </fieldset>
                    </div>                                             
          </div>
              </form> 
            <hr>
            
            <table class='table'>
                <tr>
                    <th>Question</th>
                    <th>Date</th>
                    <th>Answers</th>
                </tr>
                
                <% for (Question qu : list) { %>
                <tr>
                    <td><%=qu.getQus()%></td>
                    <td><%=qu.getQusDate()%></td>
                    <td>
                        <a href="viewanswer.jsp?qid=<%=qu.getQusid()%>">
                            <b class='btn btn-success'>View Answer</b>
                        </a>
                    </td>
                </tr>
                <% } %>
            </table>
            
        </div>
      </section>

<%@include file="blocks/footer.jsp" %>