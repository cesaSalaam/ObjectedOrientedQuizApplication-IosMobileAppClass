//
//  ViewController.swift
//  Quiz
//
//  Cesa Salaam
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    
    @IBOutlet var nextQuestionBtn: UIButton!
    @IBOutlet var nextAnswerBtn: UIButton!
    @IBOutlet var questionLabel: UILabel! //Outlet for the QuestionLabel
    @IBOutlet var answerLabel: UILabel! //Outlet for the answerLabel
    @IBOutlet var checkAnswerLabel: UILabel! //Outlet for the checkAnswerLabel
    @IBOutlet var answerTextField: UITextField! //Outlet for the answer Text Field
    
    //MARK: Variables
    
    var quiz1 = Quiz(question: "From what is cognac made?", answer: "grape")
    var quiz2 = Quiz(question: "What is 7+7?", answer: "14")
    var quiz3 = Quiz(question: "What is the capital of Vermont?", answer: "monteplier")
    var listQuiz = listOfQuizes()
    var currentQuestionIndex: Int = 0 // variable to keep count of the questions
    
    //MARK: Actions
    @IBAction func showNextQuestion(sender: AnyObject){
        // this action is called when the nextQuestion button is pressed
        // this function changes the question label to the next question
        currentQuestionIndex += 1
        if currentQuestionIndex == listQuiz.arrayOfQuizes.count{
            currentQuestionIndex = 0
        }
        let question: String = listQuiz.getItem(currentQuestionIndex).getQuestion()
        questionLabel.text = question
        answerLabel.text = "..."
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        // this action is called when the showAnswer button is pressed
        // this function changes the answerLabel to the answer of the question displayed
        //let answer: String = answers[currentQuestionIndex]
        answerLabel.text = listQuiz.getItem(currentQuestionIndex).getAnswer()
    }
    
    @IBAction func answerFieldEditingChange(textField: UITextField){
        // This function is called while the text in the textField is being edited
        if let text = textField.text{
            if text == listQuiz.getItem(currentQuestionIndex).getAnswer(){
                checkAnswerLabel.text = "Right!!"
            }
            else {
                checkAnswerLabel.text = "Try again!!"
            }
        }
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        // this function is called when the users taps the screen to dismiss the keyboard.
        answerTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundBtns()
    }
    
    //MARK: Other Functions
    func populateQuiz(){
        //this function populates the quiz array and sets the label text to the first question
        
        listQuiz.addItem(quiz1)
        
        listQuiz.addItem(quiz2)
        
        listQuiz.addItem(quiz3)
        
        questionLabel.text = listQuiz.getItem(currentQuestionIndex).getQuestion()
    }
    
    func roundBtns(){
        //Rounds butttons
        nextQuestionBtn.layer.masksToBounds = true
        
        nextQuestionBtn.layer.cornerRadius = 15.0
        
        nextAnswerBtn.layer.masksToBounds = true
        
        nextAnswerBtn.layer.cornerRadius = 15.0
    }
}

