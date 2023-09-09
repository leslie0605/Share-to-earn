import SwiftUI
import Photos

struct ActionButton: View {
    var systemName: String
    var labelText: String
    var actionType: ActionType
    var contentToCopy: String?
    @Binding var showToast: Bool
    @Binding var toastMessage: String
    
    enum ActionType{
        case copyCaption
        case copyLink
        case saveImage
    }
    
    var body: some View {
        HStack{
            Image(systemName: systemName)
                .imageScale(.small)
                .foregroundColor(.gray)
            Button(action: {
                performAction(actionType)
            }){
                Text(labelText)
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.913, green: 0.265, blue: 0.35))
            }
        }
    }
    
    private func performAction(_ actionType: ActionType){
        switch actionType{
        case .copyCaption:
            UIPasteboard.general.string = contentToCopy
            showToast = true
            toastMessage = "Caption copied"
        case .copyLink:
            UIPasteboard.general.string = contentToCopy
            showToast = true
            toastMessage = "Link copied"
        case .saveImage:
            showToast = true
            toastMessage = "Image saved"
        }
    }
    
   
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(systemName: "photo", labelText: "Save Image", actionType: .copyCaption, showToast: .constant(false), toastMessage: .constant(""))
    }
}
