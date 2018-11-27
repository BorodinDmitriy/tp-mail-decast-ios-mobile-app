//
//  TicketListTableViewController.swift
//  otrs-app
//
//  Created by Imber Fox on 27/11/2018.
//  Copyright © 2018 Imber Fox. All rights reserved.
//

import UIKit

class TicketListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var user = User.defaultUser()
    
    let cellIdentifier = "TicketViewCell"
    
    @IBOutlet var tableView: UITableView!
    
    var modelArray = [Ticket]()
    var data = Ticket()

    
//    func getPost(fileName filePath :String)  {
//        let urlString = "http://localhost:5469/api/get/\(filePath)"
//        guard let url = URL(string: urlString) else { return }
//
//        URLSession.shared.dataTask(with: url, completionHandler:  { (data, response, error)-> Void in
//            if let error = error {
//                print(error.localizedDescription)
//                return
//            }
//            guard let data = data  else { return }
//
//            do {
//                let decoder = JSONDecoder()
//                let post = try decoder.decode(PostModel.self, from: data)
//                DispatchQueue.global().async {
//                    let cell = CellModel()
//                    cell.imagePath = filePath+".jpg"
//                    cell.post = post
//                    self.modelArray.append(cell)
//                    print(post)
//                    // kingfisher
//                    DispatchQueue.main.async {
//                        self.tableView.reloadData()
//                    }
//                }
//            } catch {
//                print(error.localizedDescription)
//            }
//        }).resume()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fillModelArray()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 103
        tableView.register(UINib.init(nibName: "TicketViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    func fillModelArray() {
        for _ in 1...5 {
            modelArray.append(Ticket.defaultTicket())
            //getPost(fileName: "\(i)")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let model = modelArray[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
            if let castedCell = cell as? TicketViewCell {
                castedCell.fillCell(filledTicket: model)
            }
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row > modelArray.count {
            self.data = Ticket()
        } else {
            self.data = modelArray[indexPath.row]
        }
//        performSegue(withIdentifier: "seg", sender: self)
    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let id = segue.identifier else {
//            return
//        }
//
//        switch id {
//        case "seg":
//            guard let vc = segue.destination as? ViewControllerLast else {return}
//            vc.imgPath = data.imagePath
//            vc.descriptionAnim = data.post!.description
//            vc.titleAnim = data.post!.name
//        default:
//            break
//        }
//    }
}

//
//
////    var nickname = ""
////    var password = ""
//    var user = User.defaultUser()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//    }
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
//
//    /*
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        // Configure the cell...
//
//        return cell
//    }
//    */
//
//    /*
//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    */
//
//    /*
//    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//    }
//    */
//
//    /*
//    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
//    */
//
//    /*
//    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    */
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
