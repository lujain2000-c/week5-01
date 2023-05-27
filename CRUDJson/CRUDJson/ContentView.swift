
import SwiftUI
struct Person: Codable{
    //var id: Int
    var name: String
    var age: Int
  
    private enum CodingKeys: String, CodingKey {
          // case id
           case name
           case age
           
       }
}

class Data: ObservableObject{
   // func write(_ string: String) {
    
  //  }

    // @Published var jsonArray = Person()
    
    init(){
        read()
        
        addInfo()
    }
    
    func read(){
        let path = Bundle.main.path(forResource: "data", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            do{
           
               if let data = data{
                    let json = try JSONDecoder().decode(Person.self, from: data)
                   print(json)
                
               }else{
                   print("No Data")
}
        
    }catch{
                print(error)
                }
        }.resume()

    }
     
    func addInfo(){
        
        do {
            
                        let path = Bundle.main.path(forResource: "data", ofType: "json")
                        let url = URL(fileURLWithPath: path!)
                           let person = Person( name: "Josh", age: 30)
                              let data = try JSONEncoder().encode(person)
                        let endcodeStringPerson = String(data: data, encoding: .utf8)!
                            print(endcodeStringPerson)
                        //try endcodeStringPerson.write(to: url)
                          } catch {
                              print("---> error saveToFile: \(error)")
                          }

     
 }
    }
    
    

struct ContentView: View {
    @ObservedObject var datas = Data()
    var body: some View {
        VStack {

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
