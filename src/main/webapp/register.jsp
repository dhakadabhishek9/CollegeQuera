<%@include file="blocks/header.jsp" %>

<%
    String msg = "";
    String status = request.getParameter("status");
    if(status!=null)
    {
        msg = status.equals("true")?"Register Done":"Register Failed";
    }
%>

      <section class="section contact-me" data-section="section4">
        <div class="container">
          <div class="section-heading">
            <h2>Register User</h2>
            <div class="line-dec"></div>            
          </div>
          <div class="row">
            <div class="right-content">
              <div class="container">
                <form id="contact" action="register" method="post">
                  <div class="row">
                    <div class="col-md-6">
                      <fieldset>
                        <input
                          name="name"
                          type="text"
                          class="form-control"
                          id="name"
                          placeholder="Your name..."
                          required=""
                        />
                      </fieldset>
                    </div>
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
                      <div class="col-md-6">
                      <fieldset>
                        <input
                          type="password"
                          class="form-control"
                          id="cpassword"
                          placeholder="Confirm Password..."
                          required
                        />
                      </fieldset>
                    </div>
                    <div class="col-md-6">
                      <fieldset>
                          <select class='form-control' name='type'>
                              <option value=''>Choose Type</option>
                              <option value='faculty'>Faculty</option>
                              <option value='student'>Student</option>
                          </select>
                      </fieldset>
                    </div>
                      <div class="col-md-6">
                      <fieldset>
                          <select class='form-control' name='branch'>
                              <option value=''>Choose Branch</option>
                              <option value='cs'>Computer Science</option>
                              <option value='it'>Information Technology</option>
                              <option value='me'>Mechanical</option>
                          </select>
                      </fieldset>
                    </div>
                    <div class='col-md-12'>
                        <br>                        
                    </div>  
                    <div class="col-md-12">
                      <fieldset>
                        <button type="submit" id="form-submit" class="button">
                         Register
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