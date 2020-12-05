import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
                    List(landmarkData) { landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landMark: landmark)
                        }
                    }
                    .navigationBarTitle(Text("Landmarks"))
                }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
