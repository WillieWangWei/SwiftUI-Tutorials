//
//  NotificationView.swift
//  WatchLandmarks Extension
//
//  Created by 王炜 on 2019/10/15.
//

import SwiftUI

struct NotificationView: View {
    
    let title: String?
    let message: String?
    let landmark: Landmark?
    
    init(title: String? = nil,
         message: String? = nil,
         landmark: Landmark? = nil) {
        self.title = title
        self.message = message
        self.landmark = landmark
    }
    
    var body: some View {
        VStack {
            
            if landmark != nil {
                CircleImage(image: landmark!.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
                .lineLimit(0)
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
                .lineLimit(0)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotificationView()
            
            NotificationView(title: "Turtle Rock",
                             message: "You are within 5 miles of Turtle Rock.",
                             landmark: UserData().landmarks[0])
        }
        .previewLayout(.sizeThatFits)
    }
}
