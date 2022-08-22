//
//  ContentView.swift
//  MyExpenses
//
//  Created by NOUNI on 8/21/22.
//

import SwiftUI
extension Color {
    
    static let Notwhite = Color(red: 246 / 255, green: 255 / 255, blue: 245 / 255)
    static let greeblue = Color(red: 18 / 255, green: 115 / 255, blue: 105 / 255)

}

struct ContentView: View {
    @State var opacity = 0.2
    var body: some View {
        ZStack{
            Color.greeblue.opacity(opacity).ignoresSafeArea()
            VStack{
                Text("MY EXPENSES")
                    .font(Font.custom("SourceCodePro-SemiBold", size: 45))
                    .padding(.top)
                ScrollView {
                    ForEach (ExpensesRay){expenses in
                    HStack{
                        VStack{
                            Text("Store: \(expenses.store)")
                                .frame(maxWidth: .infinity, alignment:.leading)
                                .font(Font.custom("SourceCodePro-Medium", size: 15))
                            Text("Price: \(expenses.paid, specifier:"%.3f")")
                                .frame(maxWidth: .infinity, alignment:.leading)
                                .font(Font.custom("SourceCodePro-Medium", size: 15))
                            Text("Purchases: \(expenses.purchases)")
                                .frame(maxWidth: .infinity, alignment:.leading)
                                .font(Font.custom("SourceCodePro-Medium", size: 15))
                            
                            
                            
                           
                            
                        }
                        Spacer()
                        Image(expenses.storeimage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .trailing)
                            
                        
                        
                    }
                        Divider()
                    }
                }.padding()
                    .frame(width: 370, height: 500)
                    .background(Color.Notwhite.opacity(0.4))
                Spacer()
                
                Slider(value: $opacity, in: 0...1)
                                .padding()
                                .accentColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
