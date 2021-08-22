<%@include file="blocks/facultyheader.jsp"%>

 <section class="section contact-me" data-section="section4">
        <div class="container">
          <div class="section-heading">
            <h2>Message Board</h2>
            <div class="line-dec"></div>            
          </div>
          <form id="contact" action="register" method="post">
        
          <div class="row">
                      
                
                    <div class="col-md-12">
                      <fieldset>
                        <textarea
                          name="msg"                          
                          class="form-control"
                          id="msg"
                          placeholder="Your Message..."
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
                         Send
                        </button>                        
                      </fieldset>
                    </div>                                             
          </div>
              </form>  
        </div>
      </section>

<%@include file="blocks/footer.jsp" %>