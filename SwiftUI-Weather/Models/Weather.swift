import Foundation

struct Weather: Identifiable {
    
    // MARK: Properties
    var id = UUID()
    let dayOfWeek: String
    let imageName: String
    let temparature: Int
    
    
    // MARK: Methods
    static func getWeather() -> [Weather] {
        return [
            Weather(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temparature: 30),
            Weather(dayOfWeek: "WED", imageName: "sun.max.fill", temparature: 34),
            Weather(dayOfWeek: "THU", imageName: "cloud.bolt.fill", temparature: 25),
            Weather(dayOfWeek: "FRI", imageName: "cloud.snow.fill", temparature: 20),
            Weather(dayOfWeek: "SAT", imageName: "wind", temparature: 28)
        ]
    }
}
