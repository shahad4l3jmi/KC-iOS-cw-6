//
//  ContentView.swift
//  CW6-2
//
//  Created by Shhooda on 14/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack{
        Image("BG2")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 1000)
            
        VStack{

            Text("المسبحة الإلكترونية")
                .font(Font.custom("MunaRegular",size: 50))
                .foregroundColor(.white)
                .shadow(color: .black, radius: 4)
                .padding(.top,45)
                
            RowView(MyCounter:$counter[0],title: "استغفر الله العظيم")
            RowView(MyCounter:$counter[1],title:  "سبحان الله وبحمده")
            RowView(MyCounter:$counter[2],title: "سبحان الله العظيم " )
            
            Text("عن أبي هريرة - رضي الله عنه - قال: قال رسول الله - صلى الله عليه وسلم -: ((كلمتان خفيفتان على اللسان، ثقيلتان في الميزان، حبيبتان إلى الرحمن: سبحان الله وبحمده، سبحان الله العظيم))")
                .padding(10)
                .font(Font.custom("MunaRegular",size: 22))
                .foregroundColor(.white)
                .background(.indigo.opacity(0.5))
                .cornerRadius(15)
                .frame(width: 360, height: 170)
                .shadow(color: .black, radius: 4)
        }
    }
}
}

// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView : View {
    @Binding var MyCounter: Int
    @State var title:String
    var body: some View {
        
        HStack{
            Text(title).font(.title)
                .foregroundColor(.white)
                .shadow(color: .black, radius: 4)
            Spacer()
            Text("\(MyCounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.indigo)
                .clipShape(Circle())
                .padding()
                .shadow(color: .black, radius: 4)
                .onTapGesture {
                    MyCounter = MyCounter + 1
                }
        }.padding()
           
    }
}
            
