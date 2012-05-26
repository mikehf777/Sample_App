require 'spec_helper'
leyenda = "debe responder a la ruta"
describe "LayoutLinks" do
  
  it "#{leyenda} /contacto" do
    get '/contacto'
    response.should have_selector('title',:content => "Contacto")
  end
  
  it "#{leyenda} /about" do
    get '/about'
    response.should have_selector('title',:content => "About")
  end
  
  it "#{leyenda} /ayuda" do
    get '/ayuda'
    response.should have_selector('title',:content => "Ayuda")
  end
  
  it "#{leyenda}  /signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
 it "las rutas deben de ir al lugar correcto" do 
    visit root_path
    click_link "About"
    response.should have_selector('title',:content => "About")
    click_link "Ayuda"
    response.should have_selector('title',:content => "Ayuda")
    click_link "Contacto"
    response.should have_selector('title',:content => "Contacto")
    click_link "Home"
    response.should have_selector('title',:content => "Home")
    click_link "Sign Up"
    response.should have_selector('title',:content => "Sign up")
  
  
    end
  
end
