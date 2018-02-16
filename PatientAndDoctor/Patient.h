//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Chris Dean on 2018-02-15.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Prescription.h"

@interface Patient : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) int age;
@property (nonatomic) BOOL hasHealthCard;
@property (nonatomic) NSArray* symptoms;
@property (nonatomic) NSMutableSet* prescriptionSet;

-(instancetype)initWithName:(NSString*)name andAge:(int)age;

-(void)visitDoctor:(Doctor*)doctor;

-(Prescription*)requestMedication:(Doctor*)doctor withSymptoms:(NSArray*) symptoms;

@end
