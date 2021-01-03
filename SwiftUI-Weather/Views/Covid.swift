import SwiftUI

struct Covid: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2676861286, green: 0.2773749828, blue: 0.6787461042, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView()
                
                LocationView()
                
                CardViews()
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 600)
            .padding(.top, 60)
            .background(Color(.white))
            .cornerRadius(40)
            .offset(y: -120)
        }
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
        VStack() {
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
            .padding(EdgeInsets(top: 2, leading: 36, bottom: 0, trailing: 0))
            
        }
        .padding(.top, 40)
    }
}

struct FeelingCardView1: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color(#colorLiteral(red: 0.8775878549, green: 0.9517809749, blue: 0.9284226298, alpha: 1)))
            VStack {
                Image("Smile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                Text("458")
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.1834032536, green: 0.4978134632, blue: 0.4372903705, alpha: 1)))
                    .padding(.top, 10)
                
                Text("Feeling well")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.1834032536, green: 0.4978134632, blue: 0.4372903705, alpha: 1)))
            }
            
        }
        .frame(width: 130, height: 180)
    }
}

struct FeelingCardView2: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color(#colorLiteral(red: 0.8817955852, green: 0.7082685828, blue: 0.7740106583, alpha: 1)))
            VStack {
                Image("Sad")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                Text("458")
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.4108697176, green: 0.3345546126, blue: 0.3271756768, alpha: 1)))
                    .padding(.top, 10)
                
                Text("Not well")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.4108697176, green: 0.3345546126, blue: 0.3271756768, alpha: 1)))
            }
            
        }
        .frame(width: 130, height: 180)
    }
}

struct CardViews: View {
    var body: some View {
        HStack(spacing: 30) {
            FeelingCardView1()
            FeelingCardView2()
        }
    }
}
