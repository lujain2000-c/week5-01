//
//  CupcakePageView.swift
//  CupcakeApp
//
//  Created by لجين إبراهيم الكنهل on 06/11/1444 AH.
//

import SwiftUI

struct CupcakePageView: View {

    @StateObject var vm = CupcakePageViewModel()
    var body: some View {
        ZStack{
          
            Color("Brown")
            VStack{
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 10, height: 20)
                    .foregroundColor(.white)
                    .padding(.trailing,360)
                    .padding(.bottom,16)
                
                Image("CupcakeChocolateSmall")
                   // .padding(.bottom)
                ZStack{
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(Color("Beige"))
                    VStack{
                        Text("Chocolate Caramel Cupcake")
                            .font(.custom("SnellRoundhand-Black", size: 30))
                            .bold()
                            .padding(.top,24)
                            .padding(.bottom,7)
                            
                          Text("Ingredients:")
                            .font(.title3)
                            .bold()
                            .padding(.bottom,5)
                            .padding(.trailing, 230)
                        Text("Butter, sugar, milk, cocoa, eggs, baking").padding(.trailing,40)
                        Text("powder, flour, dark chocolate, caramel,").padding(.trailing,40)
                        Text("cream, buttermilk, coffee.").padding(.trailing,140)
                        
                        HStack{
                            ForEach(vm.allFacts){ fact in
                                ZStack{
                                    Color("Brown")
                                        .frame(width: 75,height: 120)
                                        .cornerRadius(40)
                                    VStack{
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 50,height: 50)
                                                .cornerRadius(25)
                                                .foregroundColor(.white)
                                            Text("\(fact.value, specifier: "%.1f")")
                                                .bold()
                                            
                                        }.padding(.bottom)
                                        
                                        Text(fact.name)
                                            .foregroundColor(.white)
                                            .bold()
                                            .font(.footnote)
                                    }
                                }.padding(.trailing)
                                    //.shadow(radius: 8)
                                    
                                
                            }
                        }.padding(.top)
                            .padding(.leading)
                           
                        VStack(spacing: 0){
                            HStack{
                                Text("$12.90")
                                    .font(.custom("SnellRoundhand-Bold", size: 40))
                                    .bold()
                                
                                .foregroundColor(Color("Brown"))
                                Text("/6pes")
                                    .font(.custom("SnellRoundhand-Bold", size: 16))
                                    .bold()
                                .foregroundColor(Color("Brown"))
                            }.padding(.trailing,200)
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("Brown"))
                                    .frame(width: 320,height: 50)
                                    .cornerRadius(10)
                                  
                                Button("Add to cart"){
                                    
                                }.font(.title2)
                                    .bold()
                                    .foregroundColor(.white)
                                   
                                
                            } .padding(.bottom,150)
                        }
                    }
                    
                }
            }.padding(.top,150)
               // .padding(.horizontal,300)
               
                
        }.ignoresSafeArea()
        
        
    }
}

struct CupcakePageView_Previews: PreviewProvider {
    static var previews: some View {
        CupcakePageView()
    }
}
