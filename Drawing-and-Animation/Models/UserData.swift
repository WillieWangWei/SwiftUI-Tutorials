//
//  UserData.swift
//  Drawing-and-Animation
//
//  Created by Willie on 2019/10/11.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
