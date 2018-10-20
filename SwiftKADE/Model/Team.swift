//
//  Team.swift
//  SwiftKADE
//
//  Created by Aji Saputra Raka Siwi on 20/10/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

class Team {
    private var _strTeam: String!
    private var _strDescriptionEN: String!
    private var _strTeamBadge: String!
    
    public var strTeam: String {
        return _strTeam
    }
    
    public var strDescriptionEN: String {
        return _strDescriptionEN
    }
    
    public var strTeamBadge: String {
        return _strTeamBadge
    }
    
    init(strTeam: String, strDescriptionEN: String, strTeamBadge: String = "") {
        self._strTeam = strTeam
        self._strDescriptionEN = strDescriptionEN
        self._strTeamBadge = strTeamBadge
    }
}
