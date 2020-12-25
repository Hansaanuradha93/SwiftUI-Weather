import SwiftUI

struct Covid: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
        }
        .padding(.top, 30)
    }
}

struct Covid_Previews: PreviewProvider {
    static var previews: some View {
        Covid()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack {
                Text("May")
                Text("25th")
            }
            .frame(width: 60, height: 60)
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(Color(#colorLiteral(red: 0.6252438426, green: 0.6180335879, blue: 0.6923285127, alpha: 1)))
            .background(Color(#colorLiteral(red: 0.9462841153, green: 0.9403383136, blue: 0.9797074199, alpha: 1)))
            .cornerRadius(15)
            
            Spacer()
            
            Image(systemName: "circle.grid.2x2.fill")
                .font(.system(size: 22))
                .frame(width: 30, height: 30)
        }
        .padding(.horizontal, 40)
    }
}
