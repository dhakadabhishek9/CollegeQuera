<%@page import="java.util.List"%>
<%@page import="com.adroit.collegequera.model.Question"%>
<%@page import="com.adroit.collegequera.dao.QuestionDao"%>
<%@include file="blocks/facultyheader.jsp"%>


<%
    QuestionDao qdao = new QuestionDao();
    List<Question> list = qdao.list(user.getBranch());    
%>
<script>
    function send(btn)
    {
        var ansid = btn.getAttribute('data-ansid');
        
        var answer = document.getElementById(ansid).value;
        var qid = btn.getAttribute('data-qid');
        var URL = "sendans?qid="+qid+"&ans="+answer;
        $.ajax({
            url : URL,
            method : "GET",
            success: function(data)
            {
                alert(data);
            }
        });
        
//        var request = new XMLHttpRequest();
//        var URL = "sendans?qid="+qid+"&ans="+answer;
//        request.open("GET",URL);
//        request.onreadystatechange=function()
//        {
//           if(request.readyState==4) 
//           {
//               alert(request.responseText);
//               document.getElementById(ansid).value="";
//           }
//        }
//        request.send();
    }
</script>
 <section class="section contact-me" data-section="section4">
        <div class="container">
          <div class="section-heading">
            <h2>Student Question</h2>
            <div class="line-dec"></div>            
          </div>
           <table class='table'>
                <tr>
                    <th>Student Name</th>
                    <th>Question</th>
                    <th>Date</th> 
                    <th>Send Answer</th>
                </tr>
                 <% 
                     int i=1;
                 for (Question qu : list) 
                 { %>
                <tr>
                    <td><%=qu.getStudentName()%></td>
                    <td><%=qu.getQus()%></td>
                    <td><%=qu.getQusDate()%></td>                    
                    <th>
                        <textarea id="ans<%=i%>" class='form-control'>
                            
                        </textarea>
                        <br>
                        <button onclick="send(this)"
                        data-ansid="ans<%=i%>"        
                        data-qid="<%=qu.getQusid()%>">Send</button>
                    </th>
                </tr>
                <% i++; } %>
           </table>
        </div>
      </section>

<%@include file="blocks/footer.jsp" %>