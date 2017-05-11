//
//  ViewController.swift
//  GameCollection
//
//  Created by Will Laco on 5/3/17.
//  Copyright © 2017 Will Laco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var gameTableView: UITableView!

    var games : [Game] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameTableView.dataSource = self
        gameTableView.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            games = try context.fetch(Game.fetchRequest())
            gameTableView.reloadData()
        } catch {
    
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let game = games[indexPath.row]
        cell.textLabel?.text = game.title
        cell.imageView?.image = UIImage(data: game.image! as Data)
        return cell
    }
}

