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
        Character(name: "Alex Dunphy", job: "Student", image: UIImage(named: "alex")!),
        Character(name: "Gloria Delgado-Pritchett", job: "Housewife/Businesswoman", image: UIImage(named: "gloria")!),
        Character(name: "Joe Pritchett", job: "Child", image: UIImage(named: "joe")!),
        Character(name: "Manny Delgado", job: "Student", image: UIImage(named: "manny")!),
        Character(name: "Cameron Tucker", job: "Football Coach/Stay-at-home Dad", image: UIImage(named: "cam")!),
        Character(name: "Haley Dunphy", job: "Marketing Assistant", image: UIImage(named: "haley")!),
        Character(name: "Lily Tucker-Pritchett", job: "Child", image: UIImage(named: "lily")!),
        Character(name: "Mitchell Pritchett", job: "Environmental Lawyer", image: UIImage(named: "mitch")!),
        Character(name: "Claire Dunphy", job: "Stay-at-home Mom/CEO of Pritchett's Closets", image: UIImage(named: "claire")!),
        Character(name: "Jay Pritchett", job: "Owner of Pritchett's Closets", image: UIImage(named: "jay")!),
        Character(name: "Luke Dunphy", job: "Student/Real Estate Agent", image: UIImage(named: "luke")!),
        Character(name: "Phil Dunphy", job: "Real Estate Agent", image: UIImage(named: "phil")!)
    ]
    var selectedCharacter : Character?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = characters[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCharacter = characters[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCharacter = selectedCharacter
        }
    }
}

