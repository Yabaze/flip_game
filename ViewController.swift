//
//  ViewController.swift
//  Flip_Game
//
//  Created by Thomas on 14/06/18.
//  Copyright © 2018 Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count_click=0
    var emoji_choice=["🌺","🌼","🥀","🌻","🥀","🌸","🌷","🌺","🌻","🌼","🌷","🌸"]
    var temp=""
    var temp_place:UIButton!
    var count_success=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flip_all()
        success_view.isHidden=true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func play_again(_ sender: Any) {
        show_all()
        flip_all()
        success_view.isHidden=true
    }
    func show_all(){
        card_0.isHidden=false
        card_1.isHidden=false
        card_2.isHidden=false
        card_3.isHidden=false
        card_4.isHidden=false
        card_5.isHidden=false
        card_6.isHidden=false
        card_7.isHidden=false
        card_8.isHidden=false
        card_9.isHidden=false
        card_10.isHidden=false
        card_11.isHidden=false
    }
    @IBOutlet weak var success_view: UIView!
    @IBAction func touch_buttons(_ sender: UIButton) {

        count_click+=1
        
        if let card_no=card_number.index(of: sender)
        {
            flipcard(withEmoji: emoji_choice[card_no], on: sender)
            print("card number : \(card_no)")
            if(count_click%2==1){
                temp=emoji_choice[card_no]
                temp_place=sender
            }
            else{
                if(temp==emoji_choice[card_no]){
                    sender.isHidden=true
                    temp_place.isHidden=true
                    count_success+=1;
                    if(count_success==6){
                        success_view.isHidden=false
                        count_success=0
                    }
                }
                else{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        // do stuff 42 seconds later
                        self.flip_all()
                    }
                }
            }
        }
        sender.isEnabled=false
    }

    @IBOutlet var card_number: [UIButton]!
    @IBOutlet weak var card_0: UIButton!
    @IBOutlet weak var card_1: UIButton!
    @IBOutlet weak var card_2: UIButton!
    @IBOutlet weak var card_3: UIButton!
    @IBOutlet weak var card_4: UIButton!
    @IBOutlet weak var card_5: UIButton!
    @IBOutlet weak var card_6: UIButton!
    @IBOutlet weak var card_7: UIButton!
    @IBOutlet weak var card_8: UIButton!
    @IBOutlet weak var card_9: UIButton!
    @IBOutlet weak var card_10: UIButton!
    @IBOutlet weak var card_11: UIButton!
    
    func flip_all(){
        card_0.setTitle("", for: UIControlState.normal)
        card_0.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_1.setTitle("", for: UIControlState.normal)
        card_1.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_2.setTitle("", for: UIControlState.normal)
        card_2.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_3.setTitle("", for: UIControlState.normal)
        card_3.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_4.setTitle("", for: UIControlState.normal)
        card_4.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_5.setTitle("", for: UIControlState.normal)
        card_5.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_6.setTitle("", for: UIControlState.normal)
        card_6.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_7.setTitle("", for: UIControlState.normal)
        card_7.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_8.setTitle("", for: UIControlState.normal)
        card_8.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_9.setTitle("", for: UIControlState.normal)
        card_9.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_10.setTitle("", for: UIControlState.normal)
        card_10.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_11.setTitle("", for: UIControlState.normal)
        card_11.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        card_0.isEnabled=true
        card_1.isEnabled=true
        card_2.isEnabled=true
        card_3.isEnabled=true
        card_4.isEnabled=true
        card_5.isEnabled=true
        card_6.isEnabled=true
        card_7.isEnabled=true
        card_8.isEnabled=true
        card_9.isEnabled=true
        card_10.isEnabled=true
        card_11.isEnabled=true
    }
    
    
    func flipcard(withEmoji Emoji:String,on button :UIButton){
        if(button.currentTitle==Emoji){
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        }
        else{
            button.setTitle(Emoji, for: UIControlState.normal)
            button.backgroundColor=#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        }
    }
}

