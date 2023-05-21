//
//  ContentView.swift
//  BMI Calculator
//
//  Created by Nojood Aljuaid  on 01/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var weight : Double = 70
    @State private var height : Double = 1.75
    var body: some View {
        VStack {
            Text("BMI Calculator")
                .font(.title)
                .padding()
            VStack{
                Text("Weight : \(String(format : "%.0f",weight)) Kg ")
                Slider(value: $weight , in : 0...200 , step: 1) }
            .padding()
            
            VStack{
                Text("Height : \(String(format: "%.0f" , height)) ")
                Slider(value: $height , in : 0...300 , step : 1)
                
            }
            .padding()
            
            Button ( action : {
                let bmi = weight / (height * height )
                var result = ""
                if bmi < 18.5 {
                    result = "UnderWeight" }
                else if bmi < 25 {
                    result = "Normal weight" }
                
                else if bmi < 30 {
                    result = "Over Weight" }
                else {
                    result = "obese" }
                
                let message = "your BMI is \(String(format : "%.1f" , bmi)) you are \(result)."
                let alert = UIAlertController(title: "BMI Calculator", message: message , preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default , handler: nil))
                UIApplication.shared.windows.first?.rootViewController?.present(alert , animated: true , completion: nil)
            }, label: {
                Text("Calculate BMI")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            })

            .padding()
                
                
                
                
            }//VStack
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
            
