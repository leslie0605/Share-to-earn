import SwiftUI

struct ContentView: View {
    @State private var captionContent =  "New Wireless Bluetooth Earphone of Disney at a Speical Price❗️\nProduct Features: Comfortable to wear 😌, good sound quality 🎵, with a wide range of colours to choose from.\nUsually costs S$9.90. Only S$5.70 for today!"
    @State private var linkContent = "https://vt.tiktok.com/ZSL3fjptc/"
    @State private var showToast = false
    @State private var toastMessage = ""
    
    var body: some View {
        VStack{
            Text("Share to your friend")
                .font(.title3)
                .bold()
            Divider()
            
            InfoSection(title: "Rules", content: "The amount of money you can earn by each sharing is up to S$0.57! The more people buy through the link you share, the more money you can earn.")
                .padding(.top,10)
            
            InfoBox(title: "Recommended sharing caption", content: captionContent)
            InfoBox(title: "Sharing Link", content: linkContent)
            
            VStack(alignment:.leading){
                Text("Recommended sharing images")
                    .font(.headline)
                HStack{
                    RoundedImage(imageName: "Mickey")
                    Spacer()
                    RoundedImage(imageName: "Minne")
                    Spacer()
                    RoundedImage(imageName: "Mickey2")
                }
            }
            .padding(.bottom,15)
            
            Divider()
            VStack{
                HStack{
                    ActionButton(systemName: "doc.text", labelText: "Copy Caption", actionType: .copyCaption, showToast: $showToast, toastMessage: $toastMessage)
                    Spacer()
                    ActionButton(systemName: "key.viewfinder", labelText: "Copy Link", actionType: .copyLink, showToast: $showToast, toastMessage: $toastMessage)
                    Spacer()
                    ActionButton(systemName: "photo", labelText: "Save Image", actionType: .saveImage, showToast: $showToast, toastMessage: $toastMessage)
                }
                .padding(.top,10)
                
                Button(action: {
                }) {
                Text("Share to earn")
                .foregroundColor(.white)
                .frame(width: 368, height: 40)
                .background(Color(red: 0.913, green: 0.265, blue: 0.35))
                .font(.headline)
                }
            }
            
        }
        .padding()
        .overlay(
            ToastView(message: toastMessage, isShowing: $showToast)
                .transition(.move(edge: .top))
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
