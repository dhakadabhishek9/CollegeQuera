<%@include file="blocks/header.jsp" %>

<%
    String msg="";
    if(request.getParameter("err")!=null)
        msg = "Invalid Id or Password !";
%>

      <section class="section contact-me" data-section="section4">
        <div class="container">
          <div class="section-heading">
            <h2>Login User</h2>
            <div class="line-dec"></div>            
          </div>
          <div class="row">
            <div class="right-content">
              <div class="container">
                  
                <form id="contact" action="login" method="post">
                  <div class="row">
                    <div class="col-md-6">
                      <fieldset>
                        <input
                          name="email"
                          type="text"
                          class="form-control"
                          id="email"
                          placeholder="Your email..."
                          required=""
                        />
                      </fieldset>
                    </div>
                    <div class="col-md-6">
                      <fieldset>
                        <input
                          name="password"
                          type="password"
                          class="form-control"
                          id="password"
                          placeholder="Password..."
                          required
                        />
                      </fieldset>
                    </div>
                    
                    <br>
                    <div class="col-md-12">
                      <fieldset>
                        <button type="submit" id="form-submit" class="button">
                         Login
                        </button>
                          &nbsp;
                          <b class='text-danger'><%=msg%></b>
                      </fieldset>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>

<%@include file="blocks/footer.jsp" %>