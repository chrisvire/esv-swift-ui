//
//  ESVData.h
//  BibleReferenceUtils
//
//  Created by Donald Hays on 12/11/09.
//  Copyright © 2001-2010 Good News / Crossway. All rights reserved. Designed and Built by Subsplash.
//

#import <Foundation/Foundation.h>


@interface ESVData : NSObject {

}

+ (NSArray *)books;
+ (NSArray *)bookAbbreviations;
+ (NSArray *)alternateAbbreviations;
+ (NSArray *)oldTestamentBooks;
+ (NSArray *)newTestamentBooks;

+ (NSInteger)numberOfChaptersInBook:(NSString *)book;
+ (NSInteger)numberOfVersesInChapter:(NSInteger)chapter inBook:(NSString *)book;
+ (BOOL)omitsVerse:(NSInteger)verse fromChapter:(NSInteger)chapter inBook:(NSString *)book;

+ (NSString *)canonicalNameForCommonName:(NSString *)name;

@end
