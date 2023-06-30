//
//  ESVData.m
//  BibleReferenceUtils
//
//  Created by Donald Hays on 12/11/09.
//  Copyright © 2001-2010 Good News / Crossway. All rights reserved. Designed and Built by Subsplash.
//

#import "ESVData.h"


@implementation ESVData
static NSArray *sharedBooksInstance = nil;
static NSArray *sharedBookAbbreviationsInstance = nil;
static NSArray *sharedOldTestamentBooksInstance = nil;
static NSArray *sharedNewTestamentBooksInstance = nil;
static NSDictionary *sharedBookStatsInstance = nil;
static NSMutableDictionary *sharedCommonCanonicalInstance = nil;

+ (NSArray *)books
{
	if(!sharedBooksInstance) {
		sharedBooksInstance = [[NSArray alloc] initWithObjects:
							   @"Genesis", @"Exodus", @"Leviticus",
							   @"Numbers", @"Deuteronomy", @"Joshua",
							   @"Judges", @"Ruth", @"1 Samuel",
							   @"2 Samuel", @"1 Kings", @"2 Kings",
							   @"1 Chronicles", @"2 Chronicles", @"Ezra",
							   @"Nehemiah", @"Esther", @"Job",
							   @"Psalms", @"Proverbs", @"Ecclesiastes",
							   @"Song of Solomon", @"Isaiah", @"Jeremiah",
							   @"Lamentations", @"Ezekiel", @"Daniel",
							   @"Hosea", @"Joel", @"Amos",
							   @"Obadiah", @"Jonah", @"Micah",
							   @"Nahum", @"Habakkuk", @"Zephaniah",
							   @"Haggai", @"Zechariah", @"Malachi",
							   @"Matthew", @"Mark", @"Luke",
							   @"John", @"Acts", @"Romans",
							   @"1 Corinthians", @"2 Corinthians", @"Galatians",
							   @"Ephesians", @"Philippians", @"Colossians",
							   @"1 Thessalonians", @"2 Thessalonians", @"1 Timothy",
							   @"2 Timothy", @"Titus", @"Philemon",
							   @"Hebrews", @"James", @"1 Peter",
							   @"2 Peter", @"1 John", @"2 John",
							   @"3 John", @"Jude", @"Revelation",
							   nil];
	}
	
	return sharedBooksInstance;
}

+ (NSArray *)bookAbbreviations
{
	if(!sharedBookAbbreviationsInstance) {
		sharedBookAbbreviationsInstance = [[NSArray alloc] initWithObjects:
										   @"Gen.", @"Ex.", @"Lev.",
										   @"Num.", @"Deut.", @"Josh.",
										   @"Judg.", @"Ruth", @"1 Sam.",
										   @"2 Sam.", @"1 Kings", @"2 Kings",
										   @"1 Chron.", @"2 Chron.", @"Ezra",
										   @"Neh.", @"Est.", @"Job",
										   @"Ps.", @"Prov.", @"Eccles.",
										   @"Song", @"Isa.", @"Jer.",
										   @"Lam.", @"Ezek.", @"Dan.",
										   @"Hos.", @"Joel", @"Amos",
										   @"Obad.", @"Jonah", @"Mic.",
										   @"Nah.", @"Hab.", @"Zeph.",
										   @"Hag.", @"Zech.", @"Mal.",
										   @"Matt.", @"Mark", @"Luke",
										   @"John", @"Acts", @"Rom.",
										   @"1 Cor.", @"2 Cor.", @"Gal.",
										   @"Eph.", @"Phil.", @"Col.",
										   @"1 Thess.", @"2 Thess.", @"1 Tim.",
										   @"2 Tim.", @"Titus", @"Philem.",
										   @"Heb.", @"James", @"1 Pet.",
										   @"2 Pet.", @"1 John", @"2 John",
										   @"3 John", @"Jude", @"Rev.",
										   nil];
	}
	
	return sharedBookAbbreviationsInstance;
}

+ (NSArray*)alternateAbbreviations
{
    return @[
    @[@"Gen.", @"Gen", @"Gn.", @"Gn"],
    @[@"Exod.", @"Exod", @"Exo.", @"Exo", @"Ex.", @"Ex"],
    @[@"Lev.", @"Lev", @"Lv.", @"Lv"],
    @[@"Num.", @"Num", @"Nm.", @"Nm"],
    @[@"Deut.", @"Deut", @"Dt.", @"Dt"],
    @[@"Josh.", @"Josh"],
    @[@"Judg.", @"Judg", @"Jdg.", @"Jdg"],
    @[@"Ruth"],
    @[@"1 Sam.", @"1 Sam", @"1Sam.", @"1Sam"],
    @[@"2 Sam.", @"2 Sam", @"2Sam.", @"2Sam"],
    @[@"1 Kings"],
    @[@"2 Kings"],
    @[@"1 Chron.", @"1 Chron"],
    @[@"2 Chron.", @"2 Chron"],
    @[@"Ezra", @"Ez.", @"Ez"],
    @[@"Neh.", @"Neh"],
    @[@"Esth.", @"Esth", @"Est.", @"Est"],
    @[@"Job.", @"Job"],
    @[@"Psalm", @"Ps.", @"Ps"],
    @[@"Prov.", @"Prov", @"Pv.", @"Pv"],
    @[@"Eccles.", @"Eccles", @"Eccl.", @"Eccl", @"Ec.", @"Ec"],
    @[@"Song.", @"Song", @"SS.", @"SS"],
    @[@"Isa.", @"Isa", @"Is.", @"Is"],
    @[@"Jer.", @"Jer"],
    @[@"Lam.", @"Lam"],
    @[@"Ezek.", @"Ezek"],
    @[@"Dan.", @"Dan"],
    @[@"Hos.", @"Hos"],
    @[@"Joel"],
    @[@"Amos"],
    @[@"Obad.", @"Obad"],
    @[@"Jonah"],
    @[@"Mic.", @"Mic"],
    @[@"Nah.", @"Nah"],
    @[@"Hab.", @"Hab"],
    @[@"Zeph.", @"Zeph"],
    @[@"Hag.", @"Hag"],
    @[@"Zech.", @"Zech"],
    @[@"Mal.", @"Mal"],
    @[@"Matt.", @"Matt", @"Mat.", @"Mat", @"Mt.", @"Mt"],
    @[@"Mark", @"Mk.", @"Mk"],
    @[@"Luke", @"Lk.", @"Lk"],
    @[@"John"],
    @[@"Acts"],
    @[@"Rom.", @"Rom", @"Rm.", @"Rm"],
    @[@"1 Cor.", @"1 Cor", @"1Cor.", @"1Cor", @"1 Co.", @"1 Co", @"1Co.", @"1Co"],
    @[@"2 Cor.", @"2 Cor", @"2Cor.", @"2Cor", @"2 Co.", @"2 Co", @"2Co.", @"2Co"],
    @[@"Gal.", @"Gal"],
    @[@"Eph.", @"Eph"],
    @[@"Phil.", @"Phil", @"Phi.", @"Phi"],
    @[@"Col.", @"Col"],
    @[@"1 Thess.", @"1 Thess", @"1Th.", @"1Th"],
    @[@"2 Thess.", @"2 Thess", @"2Th.", @"2Th"],
    @[@"1 Tim.", @"1 Tim", @"1 Ti.", @"1 Ti"],
    @[@"2 Tim.", @"2 Tim", @"2 Ti.", @"2 Ti"],
    @[@"Titus"],
    @[@"Philem.", @"Philem", @"Phm.", @"Phm"],
    @[@"Heb.", @"Heb"],
    @[@"James", @"Jame", @"Jas.", @"Jas", @"Jms.", @"Jms", @"Ja.", @"Ja", @"Jm.", @"Jm"],
    @[@"1 Pet.", @"1 Pet", @"1Pet.", @"1Pet", @"1 Pt.", @"1 Pt", @"1Pt.", @"1Pt"],
    @[@"2 Pet.", @"2 Pet", @"2Pet.", @"2Pet", @"2 Pt.", @"2 Pt", @"2Pt.", @"2Pt"],
    @[@"1 John", @"1 Jo.", @"1 Jo", @"1Jo.", @"1Jo", @"1 Jn.", @"1 Jn", @"1Jn.", @"1Jn"],
    @[@"2 John", @"2 Jo.", @"2 Jo", @"2Jo.", @"2Jo", @"2 Jn.", @"2 Jn", @"2Jn.", @"2Jn"],
    @[@"3 John", @"3 Jo.", @"3 Jo", @"3Jo.", @"3Jo", @"3 Jn.", @"3 Jn", @"3Jn.", @"3Jn"],
    @[@"Jude"],
    @[@"Rev.", @"Rev", @"Rv.", @"Rv"],
    ];
}

+ (NSArray *)oldTestamentBooks
{
	if(!sharedOldTestamentBooksInstance) {
		sharedOldTestamentBooksInstance = [[ESVData books] subarrayWithRange:NSMakeRange(0, 39)];
	}
	
	return sharedOldTestamentBooksInstance;
}

+ (NSArray *)newTestamentBooks
{
	if(!sharedNewTestamentBooksInstance) {
		sharedNewTestamentBooksInstance = [[ESVData books] subarrayWithRange:NSMakeRange(39, 27)];
	}
	
	return sharedNewTestamentBooksInstance;
}

+ (NSArray *)chaptersForString:(NSString *)chapterString
{
	NSArray *components = [chapterString componentsSeparatedByString:@", "];
	NSMutableArray *array = [NSMutableArray array];
	for(NSString *component in components) {
		[array addObject:[NSNumber numberWithInteger:[component intValue]]];
	}
	
	return array;
}

+ (void)buildBookStats
{
	if(!sharedBookStatsInstance) {
		sharedBookStatsInstance = [[NSDictionary alloc] initWithObjectsAndKeys:
								   [ESVData chaptersForString:@"31, 25, 24, 26, 32, 22, 24, 22, 29, 32, 32, 20, 18, 24, 21, 16, 27, 33, 38, 18, 34, 24, 20, 67, 34, 35, 46, 22, 35, 43, 55, 32, 20, 31, 29, 43, 36, 30, 23, 23, 57, 38, 34, 34, 28, 34, 31, 22, 33, 26"], @"Genesis", 
								   [ESVData chaptersForString:@"22, 25, 22, 31, 23, 30, 25, 32, 35, 29, 10, 51, 22, 31, 27, 36, 16, 27, 25, 26, 36, 31, 33, 18, 40, 37, 21, 43, 46, 38, 18, 35, 23, 35, 35, 38, 29, 31, 43, 38"], @"Exodus",
								   [ESVData chaptersForString:@"17, 16, 17, 35, 19, 30, 38, 36, 24, 20, 47, 8, 59, 57, 33, 34, 16, 30, 37, 27, 24, 33, 44, 23, 55, 46, 34"], @"Leviticus",
								   [ESVData chaptersForString:@"54, 34, 51, 49, 31, 27, 89, 26, 23, 36, 35, 16, 33, 45, 41, 50, 13, 32, 22, 29, 35, 41, 30, 25, 18, 65, 23, 31, 40, 16, 54, 42, 56, 29, 34, 13"], @"Numbers",
								   [ESVData chaptersForString:@"46, 37, 29, 49, 33, 25, 26, 20, 29, 22, 32, 32, 18, 29, 23, 22, 20, 22, 21, 20, 23, 30, 25, 22, 19, 19, 26, 68, 29, 20, 30, 52, 29, 12"], @"Deuteronomy",
								   [ESVData chaptersForString:@"18, 24, 17, 24, 15, 27, 26, 35, 27, 43, 23, 24, 33, 15, 63, 10, 18, 28, 51, 9, 45, 34, 16, 33"], @"Joshua",
								   [ESVData chaptersForString:@"36, 23, 31, 24, 31, 40, 25, 35, 57, 18, 40, 15, 25, 20, 20, 31, 13, 31, 30, 48, 25"], @"Judges",
								   [ESVData chaptersForString:@"22, 23, 18, 22"], @"Ruth",
								   [ESVData chaptersForString:@"28, 36, 21, 22, 12, 21, 17, 22, 27, 27, 15, 25, 23, 52, 35, 23, 58, 30, 24, 42, 15, 23, 29, 22, 44, 25, 12, 25, 11, 31, 13"], @"1 Samuel",
								   [ESVData chaptersForString:@"27, 32, 39, 12, 25, 23, 29, 18, 13, 19, 27, 31, 39, 33, 37, 23, 29, 33, 43, 26, 22, 51, 39, 25"], @"2 Samuel",
								   [ESVData chaptersForString:@"53, 46, 28, 34, 18, 38, 51, 66, 28, 29, 43, 33, 34, 31, 34, 34, 24, 46, 21, 43, 29, 53"], @"1 Kings",
								   [ESVData chaptersForString:@"18, 25, 27, 44, 27, 33, 20, 29, 37, 36, 21, 21, 25, 29, 38, 20, 41, 37, 37, 21, 26, 20, 37, 20, 30"], @"2 Kings",
								   [ESVData chaptersForString:@"54, 55, 24, 43, 26, 81, 40, 40, 44, 14, 47, 40, 14, 17, 29, 43, 27, 17, 19, 8, 30, 19, 32, 31, 31, 32, 34, 21, 30"], @"1 Chronicles",
								   [ESVData chaptersForString:@"17, 18, 17, 22, 14, 42, 22, 18, 31, 19, 23, 16, 22, 15, 19, 14, 19, 34, 11, 37, 20, 12, 21, 27, 28, 23, 9, 27, 36, 27, 21, 33, 25, 33, 27, 23"], @"2 Chronicles",
								   [ESVData chaptersForString:@"11, 70, 13, 24, 17, 22, 28, 36, 15, 44"], @"Ezra",
								   [ESVData chaptersForString:@"11, 20, 32, 23, 19, 19, 73, 18, 38, 39, 36, 47, 31"], @"Nehemiah",
								   [ESVData chaptersForString:@"22, 23, 15, 17, 14, 14, 10, 17, 32, 3"], @"Esther",
								   [ESVData chaptersForString:@"22, 13, 26, 21, 27, 30, 21, 22, 35, 22, 20, 25, 28, 22, 35, 22, 16, 21, 29, 29, 34, 30, 17, 25, 6, 14, 23, 28, 25, 31, 40, 22, 33, 37, 16, 33, 24, 41, 30, 24, 34, 17"], @"Job",
								   [ESVData chaptersForString:@"6, 12, 8, 8, 12, 10, 17, 9, 20, 18, 7, 8, 6, 7, 5, 11, 15, 50, 14, 9, 13, 31, 6, 10, 22, 12, 14, 9, 11, 12, 24, 11, 22, 22, 28, 12, 40, 22, 13, 17, 13, 11, 5, 26, 17, 11, 9, 14, 20, 23, 19, 9, 6, 7, 23, 13, 11, 11, 17, 12, 8, 12, 11, 10, 13, 20, 7, 35, 36, 5, 24, 20, 28, 23, 10, 12, 20, 72, 13, 19, 16, 8, 18, 12, 13, 17, 7, 18, 52, 17, 16, 15, 5, 23, 11, 13, 12, 9, 9, 5, 8, 28, 22, 35, 45, 48, 43, 13, 31, 7, 10, 10, 9, 8, 18, 19, 2, 29, 176, 7, 8, 9, 4, 8, 5, 6, 5, 6, 8, 8, 3, 18, 3, 3, 21, 26, 9, 8, 24, 13, 10, 7, 12, 15, 21, 10, 20, 14, 9, 6"], @"Psalms",
								   [ESVData chaptersForString:@"33, 22, 35, 27, 23, 35, 27, 36, 18, 32, 31, 28, 25, 35, 33, 33, 28, 24, 29, 30, 31, 29, 35, 34, 28, 28, 27, 28, 27, 33, 31"], @"Proverbs",
								   [ESVData chaptersForString:@"18, 26, 22, 16, 20, 12, 29, 17, 18, 20, 10, 14"], @"Ecclesiastes",
								   [ESVData chaptersForString:@"17, 17, 11, 16, 16, 13, 13, 14"], @"Song of Solomon",
								   [ESVData chaptersForString:@"31, 22, 26, 6, 30, 13, 25, 22, 21, 34, 16, 6, 22, 32, 9, 14, 14, 7, 25, 6, 17, 25, 18, 23, 12, 21, 13, 29, 24, 33, 9, 20, 24, 17, 10, 22, 38, 22, 8, 31, 29, 25, 28, 28, 25, 13, 15, 22, 26, 11, 23, 15, 12, 17, 13, 12, 21, 14, 21, 22, 11, 12, 19, 12, 25, 24"], @"Isaiah",
								   [ESVData chaptersForString:@"19, 37, 25, 31, 31, 30, 34, 22, 26, 25, 23, 17, 27, 22, 21, 21, 27, 23, 15, 18, 14, 30, 40, 10, 38, 24, 22, 17, 32, 24, 40, 44, 26, 22, 19, 32, 21, 28, 18, 16, 18, 22, 13, 30, 5, 28, 7, 47, 39, 46, 64, 34"], @"Jeremiah",
								   [ESVData chaptersForString:@"22, 22, 66, 22, 22"], @"Lamentations",
								   [ESVData chaptersForString:@"28, 10, 27, 17, 17, 14, 27, 18, 11, 22, 25, 28, 23, 23, 8, 63, 24, 32, 14, 49, 32, 31, 49, 27, 17, 21, 36, 26, 21, 26, 18, 32, 33, 31, 15, 38, 28, 23, 29, 49, 26, 20, 27, 31, 25, 24, 23, 35"], @"Ezekiel",
								   [ESVData chaptersForString:@"21, 49, 30, 37, 31, 28, 28, 27, 27, 21, 45, 13"], @"Daniel",
								   [ESVData chaptersForString:@"11, 23, 5, 19, 15, 11, 16, 14, 17, 15, 12, 14, 16, 9"], @"Hosea",
								   [ESVData chaptersForString:@"20, 32, 21"], @"Joel",
								   [ESVData chaptersForString:@"15, 16, 15, 13, 27, 14, 17, 14, 15"], @"Amos",
								   [ESVData chaptersForString:@"21"], @"Obadiah",
								   [ESVData chaptersForString:@"17, 10, 10, 11"], @"Jonah",
								   [ESVData chaptersForString:@"16, 13, 12, 13, 15, 16, 20"], @"Micah",
								   [ESVData chaptersForString:@"15, 13, 19"], @"Nahum",
								   [ESVData chaptersForString:@"17, 20, 19"], @"Habakkuk",
								   [ESVData chaptersForString:@"18, 15, 20"], @"Zephaniah",
								   [ESVData chaptersForString:@"15, 23"], @"Haggai",
								   [ESVData chaptersForString:@"21, 13, 10, 14, 11, 15, 14, 23, 17, 12, 17, 14, 9, 21"], @"Zechariah",
								   [ESVData chaptersForString:@"14, 17, 18, 6"], @"Malachi",
								   [ESVData chaptersForString:@"25, 23, 17, 25, 48, 34, 29, 34, 38, 42, 30, 50, 58, 36, 39, 28, 27, 35, 30, 34, 46, 46, 39, 51, 46, 75, 66, 20"], @"Matthew",
								   [ESVData chaptersForString:@"45, 28, 35, 41, 43, 56, 37, 38, 50, 52, 33, 44, 37, 72, 47, 20"], @"Mark",
								   [ESVData chaptersForString:@"80, 52, 38, 44, 39, 49, 50, 56, 62, 42, 54, 59, 35, 35, 32, 31, 37, 43, 48, 47, 38, 71, 56, 53"], @"Luke",
								   [ESVData chaptersForString:@"51, 25, 36, 54, 47, 71, 53, 59, 41, 42, 57, 50, 38, 31, 27, 33, 26, 40, 42, 31, 25"], @"John",
								   [ESVData chaptersForString:@"26, 47, 26, 37, 42, 15, 60, 40, 43, 48, 30, 25, 52, 28, 41, 40, 34, 28, 41, 38, 40, 30, 35, 27, 27, 32, 44, 31"], @"Acts",
								   [ESVData chaptersForString:@"32, 29, 31, 25, 21, 23, 25, 39, 33, 21, 36, 21, 14, 23, 33, 27"], @"Romans",
								   [ESVData chaptersForString:@"31, 16, 23, 21, 13, 20, 40, 13, 27, 33, 34, 31, 13, 40, 58, 24"], @"1 Corinthians",
								   [ESVData chaptersForString:@"24, 17, 18, 18, 21, 18, 16, 24, 15, 18, 33, 21, 14"], @"2 Corinthians",
								   [ESVData chaptersForString:@"24, 21, 29, 31, 26, 18"], @"Galatians",
								   [ESVData chaptersForString:@"23, 22, 21, 32, 33, 24"], @"Ephesians",
								   [ESVData chaptersForString:@"30, 30, 21, 23"], @"Philippians",
								   [ESVData chaptersForString:@"29, 23, 25, 18"], @"Colossians",
								   [ESVData chaptersForString:@"10, 20, 13, 18, 28"], @"1 Thessalonians", 
								   [ESVData chaptersForString:@"12, 17, 18"], @"2 Thessalonians",
								   [ESVData chaptersForString:@"20, 15, 16, 16, 25, 21"], @"1 Timothy",
								   [ESVData chaptersForString:@"18, 26, 17, 22"], @"2 Timothy",
								   [ESVData chaptersForString:@"16, 15, 15"], @"Titus",
								   [ESVData chaptersForString:@"25"], @"Philemon",
								   [ESVData chaptersForString:@"14, 18, 19, 16, 14, 20, 28, 13, 28, 39, 40, 29, 25"], @"Hebrews",
								   [ESVData chaptersForString:@"27, 26, 18, 17, 20"], @"James",
								   [ESVData chaptersForString:@"25, 25, 22, 19, 14"], @"1 Peter",
								   [ESVData chaptersForString:@"21, 22, 18"], @"2 Peter",
								   [ESVData chaptersForString:@"10, 29, 24, 21, 21"], @"1 John",
								   [ESVData chaptersForString:@"13"], @"2 John",
								   [ESVData chaptersForString:@"15"], @"3 John",
								   [ESVData chaptersForString:@"25"], @"Jude",
								   [ESVData chaptersForString:@"20, 29, 22, 11, 14, 17, 17, 13, 21, 11, 19, 17, 18, 20, 8, 21, 18, 24, 21, 15, 27, 21"], @"Revelation",
								   nil];
	}
}

+ (NSInteger)numberOfChaptersInBook:(NSString *)book
{
	[self buildBookStats];
	
	return [[sharedBookStatsInstance objectForKey:book] count];
}

+ (NSInteger)numberOfVersesInChapter:(NSInteger)chapter inBook:(NSString *)book
{
	[self buildBookStats];
    
    NSArray* chapters = [sharedBookStatsInstance objectForKey:book];
	
    if (chapter < chapters.count)
        return [[chapters objectAtIndex:chapter] intValue];
    return 0;
}

+ (BOOL)omitsVerse:(NSInteger)verse fromChapter:(NSInteger)chapter inBook:(NSString *)book
{
	if([book isEqualToString:@"Matthew"]) {
		return (chapter == 11 && verse == 47) ||
		(chapter == 16 && verse == 21) ||
		(chapter == 17 && verse == 11) ||
		(chapter == 22 && verse == 14);
	} else if([book isEqualToString:@"Mark"]) {
		return (chapter == 6 && verse == 16) ||
		(chapter == 8 && verse == 44) ||
		(chapter == 8 && verse == 46) ||
		(chapter == 10 && verse == 26) ||
		(chapter == 14 && verse == 28);
	} else if([book isEqualToString:@"Luke"]) {
		return (chapter == 16 && verse == 36) ||
		(chapter == 22 && verse == 17);
	} else if([book isEqualToString:@"John"]) {
		return (chapter == 4 && verse == 4);
	} else if([book isEqualToString:@"Acts"]) {
		return (chapter == 7 && verse == 37) ||
		(chapter == 14 && verse == 34) ||
		(chapter == 23 && verse == 7) ||
		(chapter == 27 && verse == 29);		
	} else if([book isEqualToString:@"Romans"]) {
		return (chapter == 15 && verse == 24);
	}
	
	return NO;
}

+ (void)processCanonicalLine:(NSString *)line
{
	NSArray *components = [line componentsSeparatedByString:@", "];
	for(NSInteger i=0; i<components.count; i++) {
		[sharedCommonCanonicalInstance setObject:[components objectAtIndex:0] forKey:[[components objectAtIndex:i] lowercaseString]];
	}
}

+ (NSString *)canonicalNameForCommonName:(NSString *)name
{
	if(!sharedCommonCanonicalInstance) {
		sharedCommonCanonicalInstance = [[NSMutableDictionary alloc] init];
		[ESVData processCanonicalLine:@"Genesis, Gen, Ge, Gn"];
		[ESVData processCanonicalLine:@"Exodus, Exo, Exd, Ex, Exod"];
		[ESVData processCanonicalLine:@"Leviticus, Levi, Lev, Le, Lv"];
		[ESVData processCanonicalLine:@"Numbers, Number, Numb, Num, Nu, Nm, Nb"];
		[ESVData processCanonicalLine:@"Deuteronomy, Dueteronomy, Deut, Deu, Dt"];
		[ESVData processCanonicalLine:@"Joshua, Josh, Jos, Jsh"];
		[ESVData processCanonicalLine:@"Judges, Juges, Judgs, Jdgs, Judg, Jdg, Jg"];
		[ESVData processCanonicalLine:@"Ruth, Rth, Ru"];
		[ESVData processCanonicalLine:@"1 Samuel, 1 Sam, 1 Sa, 1Samuel, 1 Sm, 1Sa, I Sam, 1Sam, 1S, I Samuel, ISamuel, I Sam, I Sa, 1st Samuel, First Samuel"];
		[ESVData processCanonicalLine:@"2 Samuel, 2 Sam, 2 Sa, 2Samuel, 2 Sm, 2Sa, II Sam, 2Sam, 2S, II Samuel, IISamuel, II Sam, II Sa, 2nd Samuel, Second Samuel"];
		[ESVData processCanonicalLine:@"1 Kings, 1 King, 1 Kgs, 1 Kin, 1 Kn, 1 Ki, 1 K, 1K, 1Kgs, 1Ki, I Kings, Kings, King, Kin, I Kin, I Ki, I Kgs, IKgs, 1Kings, 1st Kgs, 1st Kings, First Kings, First Kgs, 1Kin"];
		[ESVData processCanonicalLine:@"2 Kings, 2 Kgs, 2 Ki, 2K, 2Kgs, 2Ki, II Kings, II King, II Kin, II Kgs, II Ki, 2Kings, 2nd Kgs, 2nd Kings, Second Kings, Second Kgs, 2Kin"];
		[ESVData processCanonicalLine:@"1 Chronicles, 1 Chron, 1 Chr, 1 Ch, I Ch, 1Ch, I Chr, 1Chr, I Chron, 1Chron, I Chronicles, 1Chronicles, 1st Chronicles, 1st Chron, First Chronicles"];
		[ESVData processCanonicalLine:@"2 Chronicles, 2 Chron, 2 Chr, 2 Ch, II Ch, 2Ch, II Chr, 2Chr, II Chron, 2Chron, II Chronicles, 2Chronicles, 2nd Chronicles, Second Chronicles"];
		[ESVData processCanonicalLine:@"Ezra, Ezr"];
		[ESVData processCanonicalLine:@"Nehemiah, Neh, Ne"];
		[ESVData processCanonicalLine:@"Esther, Esth, Est, Es"];
		[ESVData processCanonicalLine:@"Job, Jb"];
		[ESVData processCanonicalLine:@"Psalms, Pslm, Psalm, Psa, Psm, Pss, Ps"];
		[ESVData processCanonicalLine:@"Proverbs, Proverb, Prvbs, Prov, Prv, Pr"];
		[ESVData processCanonicalLine:@"Ecclesiastes, Eclesiastes, Ecclesiaste, Ecc, Eccl, Ecll, Ecl, Eccles, Ec, Qoh, Qoheleth"];
		[ESVData processCanonicalLine:@"Song of Solomon, The Song of Solomon, SS, Canticle of Canticles, Canticles, Song of Songs, Song, Son, SOS, So"];
		[ESVData processCanonicalLine:@"Isaiah, Isah, Isa, Isai, Is"];
		[ESVData processCanonicalLine:@"Jeremiah, Jeremaih, Jere, Jer, Je, Jr"];
		[ESVData processCanonicalLine:@"Lamentations, Lamentation, Lam, La"];
		[ESVData processCanonicalLine:@"Ezekiel, Ezek, Eze, Ezk, Ez"];
		[ESVData processCanonicalLine:@"Daniel, Dan, Da, Dn"];
		[ESVData processCanonicalLine:@"Hosea, Hos, Ho"];
		[ESVData processCanonicalLine:@"Joel, Joe, Jl"];
		[ESVData processCanonicalLine:@"Amos, Amo, Am"];
		[ESVData processCanonicalLine:@"Obadiah, Obadaiah, Obadaih, Obad, Oba, Ob"];
		[ESVData processCanonicalLine:@"Jonah, Jnh, Jon"];
		[ESVData processCanonicalLine:@"Micah, Mica, Mic"];
		[ESVData processCanonicalLine:@"Nahum, Nah, Na"];
		[ESVData processCanonicalLine:@"Habakkuk, Habbakkuk, Habbakuk, Habakuk, Hab"];
		[ESVData processCanonicalLine:@"Zephaniah, Zeph, Zep, Zp"];
		[ESVData processCanonicalLine:@"Haggai, Hagai, Haggia, Hagg, Hag, Hg"];
		[ESVData processCanonicalLine:@"Zechariah, Zachariah, Zecharaiah, Zech, Zec, Zc"];
		[ESVData processCanonicalLine:@"Malachi, Mal, Ml"];
		[ESVData processCanonicalLine:@"Matthew, Mathew, Matt, Mat, Mt"];
		[ESVData processCanonicalLine:@"Mark, Mar, Mrk, Mk, Mr"];
		[ESVData processCanonicalLine:@"Luke, Luk, Lk, Lu"];
		[ESVData processCanonicalLine:@"John, Joh, Jo, Jn, Jhn"];
		[ESVData processCanonicalLine:@"Acts, Act, Ac"];
		[ESVData processCanonicalLine:@"Romans, Roman, Rom, Ro, Rm"];
		[ESVData processCanonicalLine:@"1 Corinthians, 1 Corinthian, 1 Corinth, 1 Corth, 1 Corin, 1 Corth, 1 Cor, 1 Co, I Co, 1Co, I Cor, 1Cor, Corinthians, Corinthian, I Corinthians, 1Corinthians, 1st Corinthians, First Corinthians"];
		[ESVData processCanonicalLine:@"2 Corinthians, 2 Corinthian, 2 Corinth, 2 Corin, 2 Cor, 2 Co, II Co, 2Co, II Cor, 2Cor, II Corinthians, 2Corinthians, 2nd Corinthians, Second Corinthians"];
		[ESVData processCanonicalLine:@"Galatians, Galations, Galatian, Galat, Gal, Ga"];
		[ESVData processCanonicalLine:@"Ephesians, Ephesian, Ephes, Ephe, Ephs, Eph, Ep"];
		[ESVData processCanonicalLine:@"Philippians, Phillippians, Philipians, Phillipians, Philipp, Philip, Phil, Phl, Php, Phi, Ph"];
		[ESVData processCanonicalLine:@"Colossians, Colossian, Colosians Col, Col, Co"];
		[ESVData processCanonicalLine:@"1 Thessalonians, 1 Thessalonions, 1 Thess, 1 The, 1 Th, I Th, 1Th, I Thes, 1Thes, I Thess, 1Thess, I Thessalonians, I Thessalonions, I Thess, Thessalonians, Thess, 1Thessalonians, 1st Thessalonians, First Thessalonians"];
		[ESVData processCanonicalLine:@"2 Thessalonians, 2 Thessalonions, 2 Thess, 2 Thes, 2 The, 2 Th, II Th, 2Th, II Thes, 2Thes, II Thess, 2Thess, II Thessalonians, II Thessalonions, 2Thessalonians, 2nd Thessalonians, Second Thessalonians"];
		[ESVData processCanonicalLine:@"1 Timothy, 1 Tim, 1 Tm, 1 Ti, I Ti, 1Ti, I Tim, 1Tim, I Timothy, 1Timothy, Timothy, Timoth, Tim, 1st Timothy, First Timothy"];
		[ESVData processCanonicalLine:@"2 Timothy, 2 Tim, 2 Tm, 2 Ti, II Ti, 2Ti, II Tim, 2Tim, II Timothy, 2Timothy, 2nd Timothy, Second Timothy"];
		[ESVData processCanonicalLine:@"Titus, Tit"];
		[ESVData processCanonicalLine:@"Philemon, Phillemon, Philem, Phile, Phm"];
		[ESVData processCanonicalLine:@"Hebrews, Hebrew, Heb"];
		[ESVData processCanonicalLine:@"James, Jame, Jas, Jms, Ja, Jm"];
		[ESVData processCanonicalLine:@"1 Peter, 1 Pete, 1 Pet, 1 Pe, 1 Pt, I Pe, 1Pe, I Pet, 1Pet, I Pt, 1 Pt, 1Pt, I Peter, 1Peter, Peter, 1st Peter, First Peter"];
		[ESVData processCanonicalLine:@"2 Peter, 2 Pete, 2 Pet, 2 Pe, II Pe, 2Pe, II Pet, 2Pet, II Pt, 2 Pt, 2Pt, II Peter, 2Peter, 2nd Peter, Second Peter"];
		[ESVData processCanonicalLine:@"1 John, 1 John, 1 Jn, I Jn, 1Jn, I Jo, 1Jo, I Joh, 1Joh, I Jhn, 1 Jhn, 1Jhn, I John, 1John, 1st John, First John"];
		[ESVData processCanonicalLine:@"2 John, 2 John, 2 Jn, II Jn, 2Jn, II Jo, 2Jo, II Joh, 2Joh, II Jhn, 2 Jhn, 2Jhn, II John, 2John, 2nd John, Second John"];
		[ESVData processCanonicalLine:@"3 John, 3 John, 3 Jn, III Jn, 3Jn, III Jo, 3Jo, III Joh, 3Joh, III Jhn, 3 Jhn, 3Jhn, III John, 3John, 3rd John, Third John"];
		[ESVData processCanonicalLine:@"Jude, Jud"];
		[ESVData processCanonicalLine:@"Revelation, Revelations, Rev, Re, Rv, The Revelation"];
	}
	
	return [sharedCommonCanonicalInstance objectForKey:[name lowercaseString]];
}
@end
