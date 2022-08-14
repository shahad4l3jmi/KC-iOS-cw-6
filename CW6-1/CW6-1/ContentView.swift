//
//  ContentView.swift
//  CW6-1
//
//  Created by Shhooda on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        ZStack{
            
            Image("BG5")
                .resizable()
                .resizable()
                .frame(width: 440, height: 880)
                
            
        VStack{
            Text("BMI CALCULATOR")
                .font(Font.custom("Arial Rounded MT Bold", size:30))
                .shadow(color: .black, radius: 1)
            Image("BMI2")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .padding(20)
            Text("Enter Weight And Height")
                .padding(.top)
                .foregroundColor(.black)
                .font(Font.custom("Arial Rounded MT Bold", size:25))
                .shadow(color: .black, radius: 1)
        TextField("\t Weight", text: $weight)
                .frame(width: 300,height: 50)
                .background(.white)
                .cornerRadius(50)
        TextField("\t Height", text: $height)
                .frame(width: 300,height: 50)
                .background(.white)
                .cornerRadius(50)
            Button {
                result =
                BMICALC(w:Double(weight) ?? 0.0, h: Double(height) ?? 0.0)
                
                if result <= 20{
                    health = "Unederweight"
                }
                
                
                    else if  result <= 25 {
                    health = "Healthy"
                }
                else {
                    health="Obese"
                }
            }
    label:{
                Text("\t احسب  \t ")
            .padding()
            .background(.white)
            .foregroundColor(.black)
            .cornerRadius(50)
            
    }.padding(.bottom)

            Text("BMI = \(result)")
                .padding(.top)
                .foregroundColor(.black)
                .font(Font.custom("Arial Rounded MT Bold", size:25))
                .shadow(color: .black, radius: 1)
        Text(" Condition =\(health)")
                .padding(.top)
                .foregroundColor(.black)
                .font(Font.custom("Arial Rounded MT Bold", size:25))
                .shadow(color: .black, radius: 1)
        

    }
        }
}
}
    func BMICALC (w: Double, h: Double) -> Double{
        return w / (h * h)
        
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
