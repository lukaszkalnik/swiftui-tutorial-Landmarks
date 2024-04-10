//
//  Landmarks.swift
//  Landmarks
//
//  Created by Lukasz on 10.04.24.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    private let imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    private let coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Codable, Hashable {
        let latitude: Double
        let longitude: Double
    }
}
