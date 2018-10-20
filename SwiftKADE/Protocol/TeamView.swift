//
//  TeamView.swift
//  SwiftKADE
//
//  Created by Aji Saputra Raka Siwi on 20/10/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

protocol TeamView{
    func startLoading()
    func finishLoading()
    func setTeams(_ teams: [Team])
    func setEmptyTeams()
}
