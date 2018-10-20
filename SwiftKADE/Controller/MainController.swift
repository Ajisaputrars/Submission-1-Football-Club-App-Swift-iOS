//
//  ViewController.swift
//  SwiftKADE
//
//  Created by Aji Saputra Raka Siwi on 20/10/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    private var teams = [Team]()
    private var teamPresenter = TeamPresenter()
    
    public var mainView: MainView! {
        guard isViewLoaded else { return nil }
        return view as! MainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TeamCell", bundle: nil)
        mainView.mainTableView.register(nib, forCellReuseIdentifier: "teamCell")
        
        mainView.mainTableView.delegate = self
        mainView.mainTableView.dataSource = self
        teamPresenter.getTeam(service: TeamService(), view: self)
    }
}

extension MainController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell") as! TeamCell
        let team = teams[indexPath.row]
        cell.configure(team: team)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DetailController(nibName: "DetailView", bundle: nil)
        controller.team = self.teams[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension MainController: TeamView {
    func startLoading() {
        mainView.indicatorView.startAnimating()
        mainView.errorLabel.isHidden = true
    }
    
    func finishLoading() {
        mainView.indicatorView.stopAnimating()
        mainView.indicatorView.isHidden = true
    }
    
    func setTeams(_ teams: [Team]) {
        self.teams = teams
        mainView.errorLabel.isHidden = true
        mainView.mainTableView.isHidden = false
        mainView.mainTableView.reloadData()
    }
    
    func setEmptyTeams() {
        mainView.errorLabel.isHidden = false
        mainView.mainTableView.isHidden = true
        mainView.mainTableView.reloadData()
    }
}

extension MainController{
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
