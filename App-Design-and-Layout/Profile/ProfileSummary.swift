//
//  ProfileSummary.swift
//  App-Design-and-Layout
//
//  Created by Willie on 2019/6/9.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    static let goalFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Notifications: \(self.profile.prefersNotifications ? "On": "Off" )")
            
            Text("Seasonal Photos: \(self.profile.seasonalPhoto.rawValue)")
            
            Text("Goal Date: \(self.profile.goalDate, formatter: Self.goalFormat)")
            
            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)
                ScrollView {
                    HStack {
                        HikeBadge(name: "First Hike")
                        
                        HikeBadge(name: "Earth Day")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "Tenth Hike")
                            .grayscale(0.5)
                            .hueRotation(Angle(degrees: 45))
                    }
                }
                .frame(height: 140)
            }
            
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
            
                HikeView(hike: hikeData[0])
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
