//
//  DetailView.swift
//  SwiftKADE
//
//  Created by Aji Saputra Raka Siwi on 20/10/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import Kingfisher

class DetailView: UIView {
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTeamName: UILabel!
    @IBOutlet weak var detailTeamDescription: UILabel!
    
    func configureView(team: Team){
        self.detailTeamName.text = team.strTeam
        self.detailTeamDescription.text = team.strDescriptionEN
        self.detailImageView.kf.setImage(with: URL(string: team.strTeamBadge))
    }
}
