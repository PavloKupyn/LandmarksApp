//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eric Cartman on 02.03.2022.
//

import SwiftUI
struct LandmarkList: View  {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavsOnly = false
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{
            landmark in (!showFavsOnly || landmark.isFavorite)
        }
    }
    var body: some View  {
        NavigationView {
        List() {
            Toggle(isOn: $showFavsOnly){
                Text("Show favorites only")
            }
            ForEach(filteredLandmarks) {
            landmark in
            NavigationLink{
                LandmarkDetail(landmark: landmark)
            } label: {
                    LandmarkRow(landmark: landmark)
                   }
               }
            }
        .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
