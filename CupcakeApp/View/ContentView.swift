

import SwiftUI

struct ContentView: View {
    @StateObject var vm = CupcakeViewModel()
    var body: some View {
        NavigationStack{
            ZStack {
                Color("Beige")
                VStack{
                    Image(systemName: "cart.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color("Brown"))
                        .padding(.leading,300)
                    NavigationLink("My cart", destination: CartView())
                        .navigationTitle(" ")
                        .font(.footnote)
                        .foregroundColor(Color("Brown"))
                        .bold()
                        .padding(.leading,300)
                    
                       
                    VStack{
                        Text("Choose your Cupcake")
                            .font(.custom("SnellRoundhand-Black", size:32))
                            .bold()
                            .foregroundColor(Color("Brown"))
                            .padding(.trailing,25)
                        VStack(alignment: .leading){
                            Text("Dainty.")
                            Text("Yummy cupcakes.")
                            Text("To fit into any occation of your life!")
                        }.bold()
                            .foregroundColor(Color("Brown"))
                            .padding(.top)
                            .padding(.bottom, 30)
                            .padding(.trailing,70)
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 32){
                                
                                ForEach(vm.allCupcake){cupcake in
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 170, height: 270)
                                            .foregroundColor(Color("Brown"))
                                            .cornerRadius(25)
                                        
                                        VStack{
                                            HStack {
                                            NavigationLink(cupcake.name, destination: CupcakePageView())
                                                    .navigationTitle(" ")
                                                    .multilineTextAlignment(.center)
                                                    .lineLimit(2)
                                                    .navigationBarBackButtonHidden(true)
                                                   
                                            }
                                            Image(cupcake.imageName)
                                                .resizable()
                                                .frame(width: 100,height: 100)
                                                .padding(.bottom)
                                            HStack{
                                                Text("$\(cupcake.price, specifier: "%.2f")").font(.custom("SnellRoundhand-Bold", size: 24))
                                                    .bold()
                                                
                                                Spacer()
                                                Image(systemName: "plus.circle.fill")
                                                    .resizable()
                                                .frame(width: 30,height: 30)                                    }
                                            .padding(.horizontal,16)
                                            
                                            Text("6pes")
                                                .padding(.trailing,120)
                                                .font(.custom("SnellRoundhand-Bold", size: 16))
                                                .bold()
                                        }
                                    }
                                    
                                }
                                
                            }.foregroundColor(.white)
                                .bold()
                        }
                        
                        HStack(spacing: 16){
                            ForEach(vm.allCategory){ category in
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 70, height: 70)
                                            .foregroundColor(category.color)
                                            .cornerRadius(50)
                                        
                                        Image(category.image)
                                            .resizable()
                                            .frame(width: 40, height: 47)
                                        
                                    }
                                    Text(category.name)
                                        .font(.footnote)
                                }
                            }
                        }.padding(.top, 80)
                            .padding(.bottom,100)
                    }.padding(.top,20)
                }.padding(.top,70)
                    .padding(.horizontal)
                
            }.ignoresSafeArea()
                
        }.tint(Color("Brown"))
           // .ignoresSafeArea()
           // .navigationTitle(" ")
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
