//
//  Sign.swift
//  LoginScreen
//
//  Created by Melisa Erdem on 23.04.2024.
//

import SwiftUI

struct Sign: View {
    @State var userName = ""
    @State var social = ["twitter","facebook","google"]
    @State var password = ""
    @State var eMail = ""
    var body: some View {
        VStack{
            
            VStack(alignment:.leading){
                Text("Hesap Oluştur").font(.title).fontWeight(.bold).foregroundColor(.black).font(.system(size: 67)).padding(.bottom,14)
                Text("Kullanıcı Adı").font(.caption).fontWeight(.bold).foregroundColor(.gray).padding(.bottom,14)
                TextField("Email Adresi",text:$eMail).padding().background(Color.white).cornerRadius(5).shadow(color: Color.black.opacity(0.1),radius: 5,x: 0,y: 5).shadow(color: Color.black.opacity(0.08),radius: 5,x: 0,y: -5).padding(.bottom,14)
                Text("Parola").font(.caption).fontWeight(.bold).foregroundColor(.gray).padding(.bottom,14)
                TextField("Parola",text:$password).padding().background(Color.white).cornerRadius(5).shadow(color: Color.black.opacity(0.1),radius: 5,x: 0,y: 5).shadow(color: Color.black.opacity(0.08),radius: 5,x: 0,y: -5)
                
            }.padding()
            Button(action:{}){
                Text("Kaydol").font(.system(size:20)).fontWeight(.bold).foregroundColor(.white).padding(.vertical).frame(width: UIScreen.main.bounds.width - 50).background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color("Renk1")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)).cornerRadius(8)
            }.padding(.horizontal,25).padding(.top,25)
            Button(action:{}){
                HStack(spacing:35){
                    Image(systemName: "faceid").font(.system(size: 26)).foregroundColor(Color("Renk1"))
                    Text("Face ID ile oturum aç").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color("Renk1"))
                    Spacer()
                }.padding().background(RoundedRectangle(cornerRadius: 30).stroke(Color("Renk1"),lineWidth: 1))
            }.padding(.top,35).padding(.horizontal,25)
            HStack(spacing:30){
                ForEach(social,id: \.self){name in
                    Button(action:{}){
                        Image(name).renderingMode(.original).resizable().frame(width: 25,height: 25).foregroundColor(Color(name=="google" ? "Renk2" : "Renk1"))
                    }
                    
                }
            }.padding(.top,25)
            
        }
    }
}

#Preview {
    Sign()
}
