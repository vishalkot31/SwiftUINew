//
//  LoginView.swift
//  SwitUIDemoV
//
//  Created by VishalKothari on 21/08/22.
//

import SwiftUI

struct LoginView: View {
    
    let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color.orange,Color.red]), startPoint: .top, endPoint: .bottom)
    
    
    @State private var remember:Bool = false
    
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                //Apply ignoresafe Area only on background view
                backgroundGradient.ignoresSafeArea()
                VStack{
                    Spacer()
                    //First stack
                    VStack(spacing:10) {
                        Text("Login")
                            .font(.title)
                        .fontWeight(.semibold)
                        Text("Please login to continue using our app")
                            .font(.footnote)
                    }
                    
                    VStack{
                        TextField("Email Address", text:$viewModel.emailAddress)
                            .frame(height:50)
                        
                            .textFieldStyle(.roundedBorder)
                        TextField("Password", text:$viewModel.password)
                            .frame(height:50)
                            .textFieldStyle(.roundedBorder)
                    }
                    .padding(10)
                    .foregroundColor(.gray)
                    ///horizontal stack
                    HStack{
                        CheckboxView(text: "Remenebr me", ischecked: $remember)
                        Spacer()
                        Text("Forget Password?")
                    }.padding(.horizontal)
                    
                    Spacer()
                    
                    //Horizontal stack
                    VStack {
                        NavigationLink(destination:RegisterView().navigationBarBackButtonHidden(true)) {
                            Button("Login"){
                                RegisterView()
                            }
                            .frame(minWidth:.zero,maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .cornerRadius(5)
                            .font(.headline)
                        }
                       
                        //Bottom button
                        Button("Dont have account?  Signup") {
                          
                        }
                    }.padding()
                }
                .foregroundColor(.white)
            }
        }
    }
}


//Checkbox View

struct CheckboxView:View {
    var text:String = "Text"
    @Binding var ischecked:Bool
    var body: some View {
            Button(){
                ischecked.toggle()
            }label: {
                Label(text,systemImage: ischecked ? "checkmark.square":"square")
        }
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
