
get "/" do
  if params[:search]
  	@contacts = Contact.where("first_name": params[:search])
  else
  	@contacts = Contact.all
  end

  if params[:order] == "dsc"
  	@contacts = @contacts.order(:first_name).reverse
  end


  erb :index
end

get "/new" do 
	erb :new
end

get "/contact/:id" do 
	@contact = Contact.find(params[:id])
	erb :details
end

get "/edit/:id" do 
	@contact = Contact.find(params[:id])
	erb :edit
end

post "/update/:id" do 
	contact = Contact.find(params[:id])
	contact.update("first_name": params[:first_name], "last_name": params[:last_name], "email": params[:email], "phonenumber": params[:phonenumber], "address": params[:address])
	redirect "/"
end

post "/create" do 
	Contact.create("first_name": params[:first_name], "last_name": params[:last_name], "email": params[:email], "phonenumber": params[:phonenumber], "address": params[:address])
	redirect "/"
end

post "/remove/:id" do 
	Contact.destroy(params[:id])
	redirect "/"
end