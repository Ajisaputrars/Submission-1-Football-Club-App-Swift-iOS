//
//  TeamService.swift
//  SwiftKADE
//
//  Created by Aji Saputra Raka Siwi on 20/10/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

let TeamURL = "https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League"

class TeamService{
    func getTeams(_ completion:@escaping ([Team]) -> Void){
        var teams = [Team]()
        Alamofire.request(TeamURL).responseJSON { (respons) in
            if respons.result.isSuccess {
                let teamsJSON: JSON = JSON(respons.result.value)
                for item in teamsJSON["teams"].arrayValue {
                    let team = Team(strTeam: item["strTeam"].stringValue, strDescriptionEN: item["strDescriptionEN"].stringValue, strTeamBadge: item["strTeamBadge"].stringValue)
                    teams.append(team)
                }
            } else if respons.result.isFailure {
                print("GAGAL COEG!")
            }
            completion(teams)
        }
    }
}
