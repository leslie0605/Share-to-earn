import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Share to your friend")
                .font(.title3)
                .bold()
            Divider()
            VStack(alignment:.leading){
                HStack{
                    Text("Rules")
                        .font(.headline)
                    Spacer()
                    HStack {
                        Text("More")
                            .font(.headline)
                            .fontWeight(.regular)
                        Image(systemName: "chevron.right")
                    }
                }
                .padding(.bottom,5)
                Text("The amount of money you can earn by each sharing is up to S$0.57! The more people buy through the link you share, the more money you can earn.")
                    .foregroundColor(Color(red: 0.31, green: 0.3176470588235294, blue: 0.34509803921568627))
                    .font(.subheadline)
            }
            .padding(.top,10)
            .padding(.bottom,15)
            
            
            VStack(alignment:.leading){
                Text("Recommended sharing caption")
                    .font(.headline)
                GroupBox() {
                    Text("New Wireless Bluetooth Earphone of Disney at a Speical Price❗️\nProduct Features: Comfortable to wear 😌, good sound quality 🎵, with a wide range of colours to choose from.\nUsually costs S$9.90. Only S$5.70 for today!")
                        .foregroundColor(Color(red: 0.31, green: 0.3176470588235294, blue: 0.34509803921568627))
                        .font(.subheadline)
                }
            }
            .padding(.bottom,15)
           
            
            VStack(alignment:.leading){
                Text("Sharing Link")
                    .font(.headline)
                GroupBox() {
                    Text("Click this link of https://vt.tiktok.com/ZSL3fjptc/")
                        .foregroundColor(Color(red: 0.31, green: 0.3176470588235294, blue: 0.34509803921568627))
                        .font(.subheadline)
                }
            }
            .padding(.bottom,15)
            
            VStack(alignment:.leading){
                Text("Recommended sharing images")
                    .font(.headline)
                HStack{
                    Image("Mickey")
                        .resizable()
                        .frame(width:100,height:100)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Spacer()
                    Image("Minne")
                        .resizable()
                        .frame(width:100,height:100)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Spacer()
                    Image("Mickey2")
                        .resizable()
                        .frame(width:100,height:100)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                
            }
            .padding(.bottom,15)
            
            
            Divider()
            
            VStack{
                HStack{
                    HStack {
                        Image(systemName: "doc.text")
                            .imageScale(.small)
                            .foregroundColor(.gray)
                        Text("Copy Caption")
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.913, green: 0.265, blue: 0.35))
                            .font(.subheadline)
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "key.viewfinder")
                            .imageScale(.small)
                            .foregroundColor(.gray)
                        Text("Copy Link")
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.913, green: 0.265, blue: 0.35))
                            .font(.subheadline)
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "photo")
                            .imageScale(.small)
                            .foregroundColor(.gray)
                        Text("Save Image")
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.913, green: 0.265, blue: 0.35))
                            .font(.subheadline)
                    }
                }
                Button(action: {
                }) {
                    Text("Share to earn")
                    .foregroundColor(.white)
                    .frame(width: 368, height: 40)
                    .background(Color(red: 0.913, green: 0.265, blue: 0.35))
                    .font(.headline)
                }
            }
            .padding(.top,10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
