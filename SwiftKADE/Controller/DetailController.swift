//
//  DetailController.swift
//  SwiftKADE
//
//  Created by Aji Saputra Raka Siwi on 20/10/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    var team: Team!
    
    public var detailView: DetailView! {
        guard isViewLoaded else { return nil }
        return view as! DetailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = team.strTeam
        detailView.configureView(team: team)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
