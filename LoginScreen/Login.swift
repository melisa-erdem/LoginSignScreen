//
//  Login.swift
//  LoginScreen
//
//  Created by Melisa Erdem on 23.04.2024.
//

import SwiftUI

struct Login: View {
    @State var password = ""
    var social = ["twitter","facebook","google"]
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 12) {
                    Text("Merhaba!").fontWeight(.bold)
                    Text("Melisa").font(.title).fontWeight(.bold)
                    Button(action: {}){Text("Bu ben değilim.").font(.system(size: 14)).fontWeight(.bold).foregroundColor(Color("Renk1"))}
                }
                Spacer(minLength: 0)
                Image("KisiProfil1").resizable().aspectRatio(contentMode: .fill).frame(width: 85,height: 85).clipShape(Circle())
            }.padding(.horizontal,25).padding(.top,0)
            VStack(alignment: .leading,spacing: 15) {
                Text("Parola").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                TextField("Parola",text: $password).padding().background(Color.white).cornerRadius(5).shadow(color: Color.black.opacity(0.1),radius: 5,x: 0,y: 5).shadow(color: Color.black.opacity(0.08),radius: 5,x: 0,y: -5)
                Button(action:{}){
                    Text("Parolamı Unuttum").font(.system(size:15)).fontWeight(.bold).foregroundColor(Color("Renk2"))
                }.padding(.top,10)
                
            }.padding(.horizontal,25).padding(.top,25)
            Button(action:{}){
                Text("Oturum Aç").font(.system(size:20)).fontWeight(.bold).foregroundColor(.white).padding(.vertical).frame(width: UIScreen.main.bounds.width - 50).background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color("Renk1")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)).cornerRadius(8)
            }.padding(.horizontal,25).padding(.top,25)
                
        }
        //sosyal medya butonları
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

#Preview {
    Login()
}
