//
//  MainScene.m
//  ZHCRMC
//
//  Created by jiangyu on 13-1-18.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "MainScene.h"

#import "CCBReader.h"
#import "AppDelegate.h"

#import "PlayingScene.h"
#import "DateHandle.h"

//#import "RJFViewController.h"

@implementation MainScene


- (id)init
{
    self = [super init];
    if (self) {
        
        ischeck= NO;
        CGSize size = [[CCDirector sharedDirector] winSize];
        
        
        CCMenuItemFont * startGame = [CCMenuItemFont itemWithString:@"Start"];
        [startGame setTarget:self selector:@selector(StartGame:)];
        
        CCMenu * menu =[CCMenu menuWithItems:startGame, nil];
        menu.anchorPoint =ccp(0, 0);
//        menu.position =ccp(size.width/2,size.height/2);
        [self addChild:menu];
        
        spriteCountinue.visible = NO;

    }
    return self;
}

-(void) StartGame:(id) sender{
//    [self startNewGame];
//    if (spriteCountinue.visible || ischeck) {
//        return;
//    }
//    ischeck = YES;
//    NSUserDefaults * defaultsDate = [NSUserDefaults standardUserDefaults];
//    if ([defaultsDate boolForKey:@"HasSave"]) {
//        spriteCountinue.visible = YES;
//    }else
        [self startNewGame];
}

-(void) startNewGame{
//    spriteCountinue.visible = NO;
    [[CCDirector sharedDirector] resume];
    CCScene * scene = [PlayerSelecScene node];//[CCBReader sceneWithNodeGraphFromFile:@"PlayerSelect.ccbi"];
    [[CCDirector sharedDirector] pushScene:scene];
    ischeck = NO;
}

-(void) continuesGame{
    spriteCountinue.visible = NO;
    ischeck = NO;
}


-(void)onEnter{
    [super onEnter];
}

-(void)onExit{
    [super onExit];
}
@end
