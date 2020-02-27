import SwiftUI

struct ModalView: View {

    let title: String
    let onClose: () -> Void

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
            VStack {
                HStack {
                    Text(title)
                    .foregroundColor(.white)
                    .font(.title)
                    Spacer()
                    Button(action: onClose) {
                        Image(systemName: "xmark")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40, alignment: .center)
                    }
                }
                Spacer()
                Text("This is some modal content")
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()

        }
    }
}

struct ContentView: View {

    var body: some View {
        ZStack {
            Text("Hello, World!")
            ModalView(title: "Modal View", onClose: {})
                .mask(RoundedRectangle(cornerRadius: 35, style: .continuous))
                .offset(x: 0, y: 60)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
