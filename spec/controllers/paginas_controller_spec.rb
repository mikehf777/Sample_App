require 'spec_helper'

describe PaginasController do
  render_views
  
  before(:each)do
  @texto_base="Aplicaciones Rapidas con Rails"
  end

   
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the rigth title" do 
   get 'home'
   response.should have_selector("title", :content =>  @texto_base+" | Home")
   end  
  end

  describe "GET 'contacto'" do
    it "returns http success" do
      get 'contacto'
      response.should be_success
    end
    it "should have the rigth title" do 
   get 'contacto'
   response.should have_selector("title", :content =>  @texto_base+" | Contacto")
   end  
  end
  
  describe "GET 'about'"  do 
    it "returns http succes" do
      get 'about'
      response.should be_success
     end
     it "should have the rigth title" do 
       get 'about'
    response.should have_selector("title", :content =>  @texto_base+" | About")
    end  
   end
   
   describe "GET 'ayuda'" do
    it "returns http success" do
      get 'ayuda'
      response.should be_success
    end
    it "should have the rigth title" do 
   get 'ayuda'
   response.should have_selector("title", :content =>  @texto_base+" | Ayuda")
   end  
  end
end
