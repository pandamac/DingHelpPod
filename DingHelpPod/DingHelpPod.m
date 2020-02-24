//  DingHelpPod.m
//  DingHelpPod
//
//  Created by shellcodepanda on 2020/2/24.
//  Copyright (c) 2020 pandatest. All rights reserved.
//

#import "DingHelpPod.h"
#import <CaptainHook/CaptainHook.h> //https://github.com/rpetrich/CaptainHook/wiki
#import <UIKit/UIKit.h>

CHDeclareClass(CustomViewController)

CHOptimizedMethod(0, self, NSString*, CustomViewController,getMyName){
    return @"MonkeyDevPod";
}

CHConstructor{
    CHLoadLateClass(CustomViewController);
    CHClassHook(0, CustomViewController, getMyName);
}
