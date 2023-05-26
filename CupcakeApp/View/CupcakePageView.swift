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
                    .padding(.trailing,300)
                Image("CupcakeChocolateSmall")
                ZStack{
                    Rectangle()
                        .cornerRadius(40)
                        .foregroundColor(Color("Beige"))
                    VStack{
                        Text("Chocolate Caramel Cupcake")
                            .font(.title2)
                            .bold()
                            .padding(.bottom)
                            
                          Text("Ingredients:")
                            .font(.headline)
                            .padding(.bottom,7)
                            .padding(.trailing, 250)
                        Text("Butter, sugar, milk, cocoa, eggs, baking").padding(.trailing,50)
                        Text("powder, flour, dark chocolate, caramel,").padding(.trailing,50)
                        Text("cream, buttermilk, coffee.").padding(.trailing,150)
                        
                        HStack{
                            ForEach(vm.allFacts){ fact in
                                ZStack{
                                    Color("Brown")
                                        .frame(width: 70,height: 125)
                                        .cornerRadius(40)
                                    VStack{
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 50,height: 50)
                                                .cornerRadius(25)
                                                .foregroundColor(.white)
                                            Text("\(fact.value)")
                                                .bold()
                                            
                                        }.padding(.bottom)
                                        
                                        Text(fact.name)
                                            .foregroundColor(Color("Beige"))
                                            .bold()
                                    }
                                }.padding(.trailing)
                                    
                                
                            }
                        }
                        HStack{
                            Text("$12")
                                .font(.largeTitle)
                                .bold()
                            
                            .foregroundColor(Color("Brown"))
                            Text("/6pes")
                                .font(.footnote)
                                .bold()
                            .foregroundColor(Color("Brown"))
                        }.padding(.trailing,250)
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("Brown"))
                                .frame(width: 320,height: 50)
                                .cornerRadius(10)
                            Button("Add to cart"){
                                
                            }.font(.title2)
                                .bold()
                                .foregroundColor(.white)
                            
                        }
                    }
                    
                }
            }.padding(.top,50)
               
                
        }.ignoresSafeArea()
        
    }
}

struct CupcakePageView_Previews: PreviewProvider {
    static var previews: some View {
        CupcakePageView()
    }
}
