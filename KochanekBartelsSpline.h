//
//  KochanekBartelsSpline.h
//
//  Created by Bret Battey Dec 2015. www.BatHatMedia.com

#import <Foundation/Foundation.h>
#import <OpenGL/gl.h>

@interface KochanekBartelsSpline : NSObject

@property   double   segments; // number of lines to use to construct the spline between two points
// Strictly speaking, tension, bias and continuity should be between -1 and 1.
// However, interesting things can happen outside of those ranges,
// so the code doesn't enforce the standard range.
// If all three are set to 0, the result is a Catmull-Rom spline.
@property   double   tension;// -1.0 to 1.0  round <-> tight
@property   double   continuity; // -1.0 to 1.0  box corners <-> inverted corners
@property   double   bias; // -1.0 to 1.0  pre-shoot <-> post-shoot
@property   double   width;
@property   bool     interpolateColor;
@property  (readonly)   UInt32  points;

- (id) init;

- (void) addPointWithX: (double) x
                     Y: (double) y
                   red: (GLfloat) red
                 green: (GLfloat) green
                  blue: (GLfloat) blue
                 alpha: (GLfloat) alpha;

- (void) render;
- (void) renderWithWidth: (GLfloat)width;

@end

