//
//  CartView.swift
//  CupcakeApp
//
//  Created by لجين إبراهيم الكنهل on 06/11/1444 AH.
//

import SwiftUI

struct CartView: View {
    @StateObject var vm = CartViewModel()
    var body: some View {
        ZStack{
            Color("Beige")
            VStack{
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 10, height: 20)
                    .foregroundColor(Color("Brown"))
                    .padding(.trailing,320)
                    .padding(.bottom)
                Text("Your cart")
                    .font(.largeTitle)
                     .bold()
                     .foregroundColor(Color("Brown"))
                     .padding(.trailing,200)
                     .padding(.bottom, 50)
                ForEach(vm.allItem){item in
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("Brown"))
                            .frame(width: 320,height: 140)
                            .cornerRadius(16)
                            .shadow(radius: 20)
                        HStack{
                            Image(item.image)
                                .resizable()
                              .frame(width: 100,height: 100)
                              .padding(.leading,20)
                            VStack{
                                Text(item.name)
                                    .padding(.bottom)
                                Text("$\(item.price)")
                                    .padding(.trailing,120)
                            }.foregroundColor(.white)
                                .bold()
                                
                            ZStack{
                                Rectangle()
                                    .frame(width: 35,height: 70)
                                    .foregroundColor(Color("Beige"))
                                    .padding(.trailing)
                                   // .cornerRadius(20)
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 35,height: 32)
                                            .foregroundColor(.white)
                                            .padding(.trailing)
                                            .cornerRadius(20)
                                         Button(" + "){
                                             
                                         }.padding(.trailing)
                                    }
                                    Text("1")
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 35,height: 32)
                                            .foregroundColor(.white)
                                            .padding(.trailing)
                                            .cornerRadius(20)
                                         Button(" - "){
                                             
                                         }.padding(.trailing)
                                    }
                                }
                            }.padding(.trailing,10)
                        }
                            
                    }
                    
                }
                Spacer()
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(height: 250)
                        .foregroundColor(Color("White"))
                        
                    VStack{
                        HStack{
                            Text("Subtotale")
                            Spacer()
                            Text("$12")
                                .bold()
                        }.foregroundColor(Color("Brown"))
                            .padding(.bottom)
                        HStack{
                            Text("Delivery")
                            Spacer()
                            Text("Free")
                                .bold()
                        }.foregroundColor(Color("Brown"))
                        Divider()
                            //.foregroundColor(.blue)
                        HStack{
                            Text("Total")
                            Spacer()
                            Text("$12")
                              
                        }.foregroundColor(Color("Brown"))
                            .bold()
                            .padding(.bottom)
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("Brown"))
                                .frame(width: 320,height: 50)
                                .cornerRadius(10)
                            Button("Chekout"){
                                
                            }.font(.title2)
                                .bold()
                                .foregroundColor(.white)
                            
                        }
                    }.padding(.horizontal,40)
                }.ignoresSafeArea()
            }.padding(.top,80)
        }.ignoresSafeArea()
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
