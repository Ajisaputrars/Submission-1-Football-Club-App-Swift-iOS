//
//  ViewController.swift
//  SwiftKADE
//
//  Created by Aji Saputra Raka Siwi on 20/10/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
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
    }
}

extension MainController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell") as! TeamCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension MainController{
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
