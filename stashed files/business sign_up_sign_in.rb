<%if @business_account%>
Sign up/in as a business

  <% if @business_account.errors.any? %>
  <div id='signup-errors'>
  <%@business_account.errors.full_messages.each do |message| %>
      <p><%= message %></p>
    <% end %>
    </div>
    <%end %>
  </div>


<div id='signup'>
<%= form_for @business_account, url: business_accounts_path do |f| %>
  <div>Email: <%= f.text_field :email %></div>
<div>  Password: <%= f.password_field :password %></div>
<div>  Password Confirmation: <%= f.password_field :password_confirmation %></div>
<div><%= f.submit "Submit" %></div>
<% end %>
</div>
-----------------------------------------

<%if flash[:alert]%>
<%=flash[:alert]%>
<%end%>

<div id='login'>
  <%=form_tag business_login_path do%>
  <div>Email: <%=text_field_tag :email %></div>
  <div>Password: <%=password_field_tag :password %></div>
  <div><%=submit_tag "log in" %></div>
<%end%>
</div>
<%end%>
