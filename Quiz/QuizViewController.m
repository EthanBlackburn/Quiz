//
//  QuizViewController.m
//  Quiz
//
//  Created by Ethan on 12/1/13.
//  Copyright (c) 2013 Ethan. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if(self){
        questions =[[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        currentQuestionIndex = 0;
        
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
        
    }
}

-(IBAction)showQuestion:(id)sender{
    currentQuestionIndex++;
    
    if(currentQuestionIndex == [questions count]){
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    NSLog(@"Displaying question: %@", question);
    
    [questionField setText:question];
    [answerField setText:@"???"];
    
}

-(IBAction)showAnswer:(id)sender{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    NSLog(@"Displaying answer: %@", answer);
    
    [answerField setText:answer];
}
@end
