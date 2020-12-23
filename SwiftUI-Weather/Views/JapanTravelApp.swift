import SwiftUI

struct JapanTravelApp: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Spacer(minLength: 30)
            
            Header()
            
            Categories()
            
            Places()
            
            FoodSection()
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

struct Card1: View {
    var body: some View {
        ZStack {
            Image("Mountain1")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Mount Fugi")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                
                Text("Fuginomiya, Japan")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .regular, design: .rounded))
            }
            .offset(x: -20.0, y: 110.0)
        }
    }
}

struct Card2: View {
    var body: some View {
        ZStack {
            Image("Mountain2")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Mount Fugi")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                
                Text("Shibuya-ku, Japan")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .regular, design: .rounded))
            }
            .offset(x: -20.0, y: 110.0)
        }
    }
}

struct Card3: View {
    var body: some View {
        ZStack {
            Image("Mountain3")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Mount Fugi")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                
                Text("Fuginomiya, Japan")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .regular, design: .rounded))
            }
            .offset(x: -20.0, y: 110.0)
        }
    }
}

struct FoodSelectedCard1: View {
    var body: some View {
        ZStack {
            VStack {
                Text("")
            }
            .frame(width: 100, height: 140)
            .background(Color(#colorLiteral(red: 0.9327170849, green: 0.9271724224, blue: 0.9369792342, alpha: 1)))
            .cornerRadius(20)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
            .offset(y: 8)
            
            VStack {
                Image("Sushi1")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Sushi")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
            }
            .frame(width: 110, height: 140)
            .background(Color.white)
            .cornerRadius(20)
        }
    }
}

struct FoodCard2: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray)
            VStack {
                Image("Roman")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Ramen")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
            }
        }
        .frame(width: 110, height: 140)
    }
}

struct FoodCard3: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray)
            VStack {
                Image("Sushi2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Sushi")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
            }
        }
        .frame(width: 110, height: 140)
    }
}

struct FoodSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Japanese Food")
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .padding(.leading, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    FoodSelectedCard1()
                    FoodCard2()
                    FoodCard3()
                }
                .frame(height: 200, alignment: .top)
                .padding(.leading, 30)
            }
            .padding(.top, 15)
        }
        .padding(.top, 10)
    }
}

struct Places: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                Card1()
                Card2()
                Card3()
            }
            .padding(.leading, 30)
        }
    }
}
