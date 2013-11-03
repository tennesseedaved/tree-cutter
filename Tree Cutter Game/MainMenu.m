//
//  MainMenu.m
//  Tree Cutter Game
//
//  Created by David Barber on 9/7/13.
//  Copyright 2013 David Barber. All rights reserved.
//

#import "MainMenu.h"


@implementation MainMenu

+(CCScene*)scene
{
    CCScene* scene = [CCScene node];
    MainMenu* layer = [MainMenu node];
    
    [scene addChild:layer];
    
    return scene;
}

-(id)init
{
    self = [super init];
    // ask director for the window size
    CGSize size = [[CCDirector sharedDirector] winSize];
    
    CCLabelTTF* label = [CCLabelTTF labelWithString:@"Tree Cutter" fontName:@"Thonburi" fontSize:72];
    label.position = ccp(size.width/2, size.height/2);
    label.color = ccc3(255,255,0);

    [self addChild:label z:100];
    
    return self;
}

@end
