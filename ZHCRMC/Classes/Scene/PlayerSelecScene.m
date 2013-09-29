//
//  PlayerSelecScene.m
//  ZHCRMC
//
//  Created by jiangyu on 13-1-18.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "PlayerSelecScene.h"
#import "CCBReader.h"
#import "PlayingScene.h"

@implementation PlayerSelecScene

- (id)init
{
    self = [super init];
    if (self) {
        
        CCMenuItemFont * startGame = [CCMenuItemFont itemWithString:@"Start"];
        [startGame setTarget:self selector:@selector(SelectRedFly:)];
        
        CCMenuItemFont * startGame1 = [CCMenuItemFont itemWithString:@"Start"];
        [startGame setTarget:self selector:@selector(SelectBlueFly:)];
        
        [startGame setPosition:ccp(0, 100)];
        
        CCMenu * menu =[CCMenu menuWithItems:startGame,startGame1, nil];
        menu.anchorPoint =ccp(0, 0);
        //        menu.position =ccp(size.width/2,size.height/2);
        [self addChild:menu];
        
//        spriteCountinue.visible = NO;
    }
    return self;
}

-(void) didLoadFromCCB{
    hasCheck = NO;
    
//    NSUserDefaults * defaultsDate = [NSUserDefaults standardUserDefaults];
//    
//    [defaultsDate setBool:NO forKey:@"20000"];
//    [defaultsDate setBool:NO forKey:@"40000"];
//    [defaultsDate setBool:NO forKey:@"60000"];
//    [defaultsDate setBool:NO forKey:@"80000"];
//    
//    [defaultsDate synchronize];
}

-(void) SelectRedFly:(id) sender{
    if (hasCheck) {
        return;
    }
    hasCheck = YES;
    PlayingScene * scene = [PlayingScene SharedPlayingScene];
    [scene startGameWithLevel:1 PlayerType:0 playerLifeCount:4 PlayerPoint:0 damageEnemyCount:0 NukeCount:3 AddWeaponLevel:0 WeaponLevel:1 bulletType:0];
    [[CCDirector sharedDirector] replaceScene:scene];

}

-(void) SelectBlueFly:(id) sender{
    if (hasCheck) {
        return;
    }
    hasCheck = YES;
    PlayingScene * scene = [PlayingScene SharedPlayingScene];
    [scene startGameWithLevel:1 PlayerType:1 playerLifeCount:4 PlayerPoint:0 damageEnemyCount:0 NukeCount:3 AddWeaponLevel:0 WeaponLevel:1 bulletType:0];
    [[CCDirector sharedDirector] replaceScene:scene];
}
@end
