//
//  MatchViewController.swift
//  PingXPong
//
//  Created by Usuário Convidado on 25/08/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {
    
    
    @IBOutlet weak var labelPlayer1: UILabel!
    @IBOutlet weak var labelPlayer2: UILabel!
    @IBOutlet weak var textFieldScore1: UITextField!
    @IBOutlet weak var textFieldScore2: UITextField!
    @IBOutlet weak var textViewScores: UITextView!
    
    //e necessario criar essas vars porque a tela ainda nao esta instanciada e os campos acima estao null ate que a tela mude
    var player1: String = ""
    var player2: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Tela 2: viewDidLoad")
        textViewScores.text = ""
        labelPlayer1.text = player1
        labelPlayer2.text = player2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 2: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Tela 2: viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela 2: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela 2: viewDidDisappear")
    }
    
    @IBAction func addScore(_ sender: UIButton) {
        let textField = sender.tag == 0 ? textFieldScore1:textFieldScore2
        
        let score = Int(textField!.text!) ?? 0
        textField?.text = "\(score + 1)"
        
    }
    
    @IBAction func registerMatch(_ sender: Any) {
        
        textViewScores.text.append("\(labelPlayer1.text!) (\(textFieldScore1.text!)) x (\(textFieldScore2.text!)) \(labelPlayer2.text!)\n")

        textFieldScore1.text = "0"
        textFieldScore2.text = "0"
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
