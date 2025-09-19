//
//  RegisterView.swift
//  SwitUIDemoV
//
//  Created by VishalKothari on 21/08/22.
//

import SwiftUI

struct RegisterView: View {
    
    let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color.orange,Color.red]), startPoint: .top, endPoint: .bottom)
    
    @State private var emailAddress:String = ""
    @State private var password:String = ""
    @State private var remember:Bool = false
    @State private var isshowPassword = false
    
    var body: some View {
        ZStack {
            backgroundGradient.ignoresSafeArea()
            //Apply ignoresafe Area only on background view
            VStack{
                Spacer()
                //First stack
                VStack(spacing:10) {
                    Text("Sign Up")
                        .font(.title)
                    .fontWeight(.semibold)
                    Text("Please signup to continue using our app")
                        .font(.footnote)
                }
                
                VStack{
                    TextField("Mobile Number", text: $emailAddress)
                        .frame(height:50)
                        .textFieldStyle(.roundedBorder)
                    TextField("Email Address", text: $password)
                        .frame(height:50)
                        .textFieldStyle(.roundedBorder)
                    HStack{
                        if isshowPassword {
                            TextField("Password", text: $password)
                        }
                        else{
                            SecureField("Password", text: $password)
                        }
                        
                        Button() {
                            isshowPassword.toggle()
                        }label: {
                            
                            Image(systemName:isshowPassword ? "eye": "eye.fill")
                        }
                    }
                    .padding(10)
                    .frame(height:35)
                    .background(.white)
                    .cornerRadius(5)
                    
                        
                   
                    TextField(" Confirm Password", text: $password)
                        .frame(height:50)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .foregroundColor(.gray)
                ///horizontal stack
                HStack(){
                    CheckboxView(text: "I agree with Private Policy", ischecked: $remember)
                    Spacer()
                }.padding(.horizontal)
                
                Spacer()
                
                //Horizontal stack
                VStack {
                    Button("Sign Up"){
                        //function to press on login
                    }
                    .frame(minWidth:.zero,maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .cornerRadius(5)
                    .font(.headline)
                    //Bottom button
                    Button("Already have account?  Login") {
                       //Funtion to signup
                    }
                }.padding()
            }
            .foregroundColor(.white)
        }
    }
}



struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
