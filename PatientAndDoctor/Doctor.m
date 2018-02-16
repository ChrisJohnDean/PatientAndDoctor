//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Chris Dean on 2018-02-15.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "Doctor.h"
#import "Prescription.h"

@interface Doctor()

@property (nonatomic) NSMutableSet* patientArray;

@end

@implementation Doctor

-(instancetype)initWithName:(NSString*)name andSpecialization:(NSString *)spec {
    self = [super init];
    if (self) {
        _name = name;
        _specialization = spec;
        _patientArray = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)acceptPatient:(Patient*)patient {
    if(patient.hasHealthCard) {
        [self.patientArray addObject:patient];
    }
}

-(BOOL)isPatientAccepted:(Patient*)patient {
    return [self.patientArray containsObject:patient];
}

-(Prescription*)acceptMedRequest:(Patient*)patient withSymptoms:(NSArray*)symptoms {
    if([self isPatientAccepted:patient]) {
        Prescription *meds = [[Prescription alloc] init];
        [patient.prescriptionSet addObject:meds];
        return meds;
    }
}
@end
