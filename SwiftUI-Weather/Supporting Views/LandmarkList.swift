import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarkData) { landMark in
            LandMarkRow(landMark: landMark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
