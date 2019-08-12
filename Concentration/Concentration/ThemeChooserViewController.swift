//
//  ThemeChooserViewController.swift
//  Concentration
//
//  Created by Madalina Sinca on 09/08/2019.
//  Copyright © 2019 Madalina Sinca. All rights reserved.
//

import UIKit

class ThemeChooserViewController: UIViewController {
    
    let gameTheme = ["flags":       ["🇧🇷", "🇧🇪", "🇯🇵", "🇨🇦", "🇺🇸", "🇵🇪", "🇮🇪", "🇦🇷"],
                     "faces":       ["😀", "🙄", "😡", "🤢", "🤡", "😱", "😍", "🤠"],
                     "sports":      ["🏌️", "🤼‍♂️", "🥋", "🏹", "🥊", "🏊", "🤾🏿‍♂️", "🏇🏿"],
                     "animals":     ["🦊", "🐼", "🦁", "🐘", "🐓", "🦀", "🐷", "🦉"],
                     "fruits":      ["🥑", "🍍", "🍆", "🍠", "🍉", "🍇", "🥝", "🍒"],
                     "appliances":  ["💻", "🖥", "⌚️", "☎️", "🖨", "🖱", "📱", "⌨️"]]
     
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "choose theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = gameTheme[themeName] {
                if let concentrationViewController = segue.destination as? ConcentrationViewController {
                    concentrationViewController.theme = theme
                }
            }
        }
    }

}
