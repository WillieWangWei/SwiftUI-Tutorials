//
//  MapView.swift
//  SwiftUI-Essentials
//
//  Created by Willie on 2019/6/5.
//  Copyright © 2019 Willie. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    typealias UIViewType = MKMapView
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif
