import SwiftUI

struct ToastView: View {
    var message: String
    @Binding var isShowing: Bool
    
    var body: some View {
        if isShowing{
            VStack{
                Text(message)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.7))
            }
            .transition(.move(edge: .top))
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    withAnimation{
                        isShowing = false
                    }
                }
            }
        }
    }
}
