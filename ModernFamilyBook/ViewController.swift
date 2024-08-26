//
//  ViewController.swift
//  ModernFamilyBook
//
//  Created by Farih Muhammad on 26/08/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let characters: [Character] = [
        Character(name: "Alex Dunphy", job: "Student", image: UIImage(named: "alex.jpg")!),
        Character(name: "Gloria Delgado-Pritchett", job: "Housewife/Businesswoman", image: UIImage(named: "gloria.jpg")!),
        Character(name: "Joe Pritchett", job: "Child", image: UIImage(named: "joe.jpg")!),
        Character(name: "Manny Delgado", job: "Student", image: UIImage(named: "manny.jpg")!),
        Character(name: "Cameron Tucker", job: "Football Coach/Stay-at-home Dad", image: UIImage(named: "cam.jpg")!),
        Character(name: "Haley Dunphy", job: "Marketing Assistant", image: UIImage(named: "haley.jpg")!),
        Character(name: "Lily Tucker-Pritchett", job: "Child", image: UIImage(named: "lily.jpg")!),
        Character(name: "Mitchell Pritchett", job: "Environmental Lawyer", image: UIImage(named: "mitch.jpg")!),
        Character(name: "Claire Dunphy", job: "Stay-at-home Mom/CEO of Pritchett's Closets", image: UIImage(named: "claire.jpg")!),
        Character(name: "Jay Pritchett", job: "Owner of Pritchett's Closets", image: UIImage(named: "jay.jpg")!),
        Character(name: "Luke Dunphy", job: "Student/Real Estate Agent", image: UIImage(named: "luke.jpg")!),
        Character(name: "Phil Dunphy", job: "Real Estate Agent", image: UIImage(named: "phil.jpg")!)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = "Mitchell"
        cell.contentConfiguration = content
        return cell
    }
    

}

