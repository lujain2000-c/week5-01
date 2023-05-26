

import SwiftUI

struct ContentView: View {
    @StateObject var vm = CupcakeViewModel()
    var body: some View {
        ZStack {
            Color("Beige")
            VStack{
                Image(systemName: "cart.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Brown"))
                    .padding(.leading,300)
            VStack{
                Text("Choose your Cupcake")
                     .font(.title)
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
                HStack{
                  
                        ForEach(vm.allCupcake){cupcake in
                            ZStack{
                                Rectangle()
                                    .frame(width: 170, height: 270)
                                    .foregroundColor(Color("Brown"))
                                    .cornerRadius(25)
                                    
                                VStack{
                                    HStack {
                                        Text(cupcake.name)
                                            .multilineTextAlignment(.center)
                                            .lineLimit(2)
                                    }
                                    Image(cupcake.imageName)
                                        .resizable()
                                        .frame(width: 100,height: 100)
                                        .padding(.bottom)
                                    HStack{
                                        Text("$\(cupcake.price)").font(.title3)
                                            .bold()
                                            
                                        Spacer()
                                        Image(systemName: "plus.circle.fill")
                                            .resizable()
                                        .frame(width: 30,height: 30)                                    }
                                    .padding(.horizontal,20)
                                        
                                    Text("6pes")
                                        .padding(.trailing,120)
                                        .font(.caption)
                                        .bold()
                                }
                            }

                        }
                        
                }.foregroundColor(.white)
                        .bold()
                }
                
                HStack{
                    ForEach(vm.allCategory){ category in
                        VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 75, height: 75)
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
                }.padding(.top, 100)
            }.padding(.top,30)
            }.padding(.top)
                .padding(.leading)

        }.ignoresSafeArea()
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
