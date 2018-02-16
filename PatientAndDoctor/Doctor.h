//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Chris Dean on 2018-02-15.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"

@interface Doctor : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* specialization;

-(instancetype)initWithName:(NSString*)name andSpecialization:(NSString*)spec;

-(void)acceptPatient:(Patient*)patient;

-(BOOL)isPatientAccepted:(Patient*)patient;

-(Prescription*)acceptMedRequest:(Patient*)patient withSymptoms:(NSArray*)symptoms;

@end
