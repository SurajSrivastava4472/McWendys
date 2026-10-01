//
//  ContentView.swift
//  McWendys
//
//  Created by SURAJ SRIVASTAVA on 10/1/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var items = ["Whopper","Soda","fries","taco", "tree"]
    @State var prices = [4.99,2.99,3.99,9.99,12.56]
    @State var calories = [500,250,320,670,23]
    
    
    @State var itemObjects:[item] = []
    
    
    
    
    
    
    
    
    var body: some View {
        VStack {
         
            
            
            
            List{
                ForEach(0..<items.count, id: \.self){ i in
                    
                    Button(itemObjects[i].name){
                        
                    }
                    
                }
                
            }
            
            
            Text("McWendys")
                .font(.custom("Insanibc", size: 20))
            
        }
        .padding()
        .onAppear {
            for i in 0..<items.count{
                itemObjects.append(item(namei: items[i], pricei: prices[i], caloriesi: calories[i]))
            }
        }
    }
}


#Preview {
    ContentView()
}

