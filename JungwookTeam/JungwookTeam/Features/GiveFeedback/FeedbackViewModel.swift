//
//  FeedbackViewModel.swift
//  JungwookTeam
//
//  Created by Kevin Dallian on 04/05/23.
//

import Foundation

enum PromptType{
    case feedback
    case storyteller
    case share
    
    func generateViewModel(promptType: PromptType) -> FeedbackViewModel{
        switch promptType{
            case .feedback:
                    return FeedbackViewModel(promptType: .feedback, title: "Feedback Time!", caption: "Here are some hints that can help you give feedback for the story teller!", prompts: Prompt.feedback)
            case .share:
                return FeedbackViewModel(promptType: .storyteller, title: "Back-to-Back Time!", caption: "Here are some hints that can help you discuss for giving your thoughts", prompts: Prompt.storyteller)
            case.storyteller:
                return FeedbackViewModel(promptType: .share, title: "Let's share our feelings!", caption: "Here are some hints that can help you discuss for your sharing time!", prompts: Prompt.share)
        }
    }
}

struct FeedbackViewModel {

    var promptType : PromptType
    var title : String
    var caption : String
    var prompts : [Prompt]
}

struct Prompt : Hashable{
    var prompt : String
    static let feedback = [
        Prompt(prompt: "1. How you feel after hearing their stories? Please explain it!"),
        Prompt(prompt: "2. Do their stories meet/not meet your expectation? Please describe why?"),
        Prompt(prompt: "3. What are the new things you learn from them after hearing their stories?")
    ]
    
    static let storyteller = [
        Prompt(prompt: "1. How you feel after hearing their feedbacks? Please explain it!"),
        Prompt(prompt: "2. Do their stories meet/not meet your expectation? Please describe why?"),
        Prompt(prompt: "3. What are the new things you learn from them after hearing their feedbacks?")
    ]
    
    static let share = [
        Prompt(prompt: "1. How you feel after hearing their feedbacks? Please explain it!"),
        Prompt(prompt: "2. Do their stories meet/not meet your expectation? Please describe why?"),
        Prompt(prompt: "3. What are the new things you learn from them after hearing their feedbacks?")
    ]
}
