import SwiftUI

struct JapanTravelApp: View {
    var body: some View {
        VStack(spacing: 30) {
            Header()
            
            Categories()
            
            Spacer()
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
        .padding(.horizontal, 30)
    }
}

struct Categories: View {
    var body: some View {
        HStack(spacing: 50) {
            VStack(alignment: .leading) {
                Text("Popular")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(.orange)
                RoundedRectangle(cornerRadius: 20.0)
                    .frame(width: 20, height: 6)
                    .foregroundColor(.orange)
                    .opacity(1)
                    .padding(.top, -2)
            }
            
            VStack(alignment: .leading) {
                Text("Rating")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
                RoundedRectangle(cornerRadius: 20.0)
                    .frame(width: 20, height: 6)
                    .foregroundColor(.gray)
                    .opacity(0)
                    .padding(.top, -2)
            }
            
            VStack(alignment: .leading) {
                Text("Recent")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
                RoundedRectangle(cornerRadius: 20.0)
                    .frame(width: 20, height: 6)
                    .foregroundColor(.gray)
                    .opacity(0)
                    .padding(.top, -2)
            }
            
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}
