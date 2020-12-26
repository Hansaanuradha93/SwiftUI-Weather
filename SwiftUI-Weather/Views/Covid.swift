import SwiftUI

struct Covid: View {
    var body: some View {
        VStack {
            HeaderView()
            
            LocationView()
            
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
            .foregroundColor(Color(#colorLiteral(red: 0.6235294118, green: 0.6196078431, blue: 0.6941176471, alpha: 1)))
            .background(Color(#colorLiteral(red: 0.9462841153, green: 0.9403383136, blue: 0.9797074199, alpha: 1)))
            .cornerRadius(15)
            
            Spacer()
            
            Image(systemName: "circle.grid.2x2.fill")
                .foregroundColor(Color(#colorLiteral(red: 0.6235294118, green: 0.6196078431, blue: 0.6941176471, alpha: 1)))
                .font(.system(size: 22))
                .frame(width: 30, height: 30)
        }
        .padding(.horizontal, 40)
    }
}

struct LocationView: View {
    var body: some View {
        VStack(spacing: 2) {
            HStack {
                Text("How people feel in")
                    .font(.system(size: 19, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.2676861286, green: 0.2773749828, blue: 0.6787461042, alpha: 1)))
                
                Spacer()
            }
            .padding(.leading, 40)
            
            HStack {
                Image("Pin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 34)
                
                Text("Los Angeles")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.2676861286, green: 0.2773749828, blue: 0.6787461042, alpha: 1)))
                
                Spacer()
            }
            .padding(.leading, 36)
            
        }
        .padding(.top, 40)
    }
}
