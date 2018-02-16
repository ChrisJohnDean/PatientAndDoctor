//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Chris Dean on 2018-02-15.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString*)name andAge:(int)age {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _prescriptionSet = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)visitDoctor:(Doctor*)doctor {
    [doctor acceptPatient:self];
    
}

-(Prescription*)requestMedication:(Doctor*)doctor withSymptoms:(NSArray*)symptoms {
    _symptoms = symptoms;
    return [doctor acceptMedRequest:self withSymptoms:self.symptoms];
}

@end


