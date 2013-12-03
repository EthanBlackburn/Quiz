//
//  QuizViewController.h
//  Quiz
//
//  Created by Ethan on 12/1/13.
//  Copyright (c) 2013 Ethan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController{
    
    int currentQuestionIndex;
    //model object
    NSMutableArray *questions;
    NSMutableArray *answers;
    //view bjects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnswer:(id)sender;

@end


