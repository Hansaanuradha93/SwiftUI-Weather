import SwiftUI

struct JapanTravelApp: View {
    var body: some View {
        VStack {
            Header()
        }
    }
}

struct JapanTravelApp_Previews: PreviewProvider {
    static var previews: some View {
        JapanTravelApp()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Text("Discover")
                .font(.system(size: 44, weight: .bold, design: .rounded))
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 28, weight: .light))
        }
        .padding(.horizontal, 20)
    }
}
