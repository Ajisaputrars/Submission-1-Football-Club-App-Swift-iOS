//
//  TeamPresenter.swift
//  SwiftKADE
//
//  Created by Aji Saputra Raka Siwi on 20/10/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

class TeamPresenter{
    func getTeam(service: TeamService, view: TeamView){
        view.startLoading()
        service.getTeams{ (teams) in
            view.finishLoading()
            if teams.count <= 0 {
                view.setEmptyTeams()
            } else {
                view.setTeams(teams)
            }
        }
    }
}
