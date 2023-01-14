//

import UIKit

class ViewController: UIViewController {

  // UI Links
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var falseButton: UIButton!
  @IBOutlet weak var trueButton: UIButton!

  // Global Vars
  var questionNumber = 0
  var userScore = 0

  @IBAction func answerButtonPressed(_ sender: UIButton) {
    let userAnswer = sender.currentTitle
    let actualAnswer = quiz[questionNumber].answer

    if questionNumber + 1 < quiz.count {
      if userAnswer == actualAnswer {
        sender.backgroundColor = UIColor.green
        userScore += 1
      } else {
        sender.backgroundColor = UIColor.red
        userScore -= 1
      }
      questionNumber += 1
        Timer.scheduledTimer(
            timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    } else {
      questionLabel.text = "That's All Folks, your Score is " + String(userScore)
      trueButton.removeFromSuperview()
      falseButton.removeFromSuperview()

    }
    
  }

  // Helpers
  @objc func updateUI() {
    questionLabel.text = quiz[questionNumber].text
    trueButton.backgroundColor = UIColor.clear
    falseButton.backgroundColor = UIColor.clear
      progressBar.progress = Float(questionNumber+1) / Float(quiz.count)

  }   

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  let quiz = [
    Question(q: "Four + Two equals to Six", a: "True"),
    Question(q: "Ayla is Dudu", a: "False"),
    Question(q: "Baba Ciccii Gagyii Ammour Shatttouur", a: "True"),
    Question(q: "Widado Noff!", a: "True"),
    Question(q: "Ayla loves Nom nom", a: "False"),
    Question(q: "Ayla is the cutest ladybug ever", a: "True"),
    Question(q: "Dabbana Jabanah is scared of Ayla", a: "False"),
    Question(q: "Ayla is scared of Dabbana Jabanah ", a: "True"),
  ]

}
