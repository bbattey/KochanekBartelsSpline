// kbTestCode
//
// Demonstrating basic usage of the Kochanek Bartels Spline class.
//
// Same basic setup as Figure 24 of Kochanek Bartels article, for
// testing to ensure the code produced the desired results.
//
// (This is not standalone code... would need to be embedded in an application)
//
//  Created by Bret Battey Dec 2015. www.BatHatMedia.com

// Allocate and init
KochanekBartelsSpline* KBSpline = [[KochanekBartelsSpline alloc] init];

// Set parameters
[KBSpline setTension:0];
[KBSpline setBias:0];
[KBSpline setContinuity:0];
[KBSpline setSegments:26];

// Add points
[KBSpline addPointWithX:100
                      Y:500
                    red:1.0
                  green:1.0
                   blue:1.0
                  alpha:1.0];
[KBSpline addPointWithX:100
                      Y:100
                    red:1.0
                  green:0.0
                   blue:0.0
                  alpha:1.0];
[KBSpline addPointWithX:500
                      Y:100
                    red:0.0
                  green:1.0
                   blue:0.0
                  alpha:1.0];
[KBSpline addPointWithX:500
                      Y:500
                    red:0.0
                  green:0.0
                   blue:1.0
                  alpha:1.0];
[KBSpline addPointWithX:900
                      Y:500
                    red:1.0
                  green:1.0
                   blue:1.0
                  alpha:1.0];
[KBSpline addPointWithX:900
                      Y:100
                    red:1.0
                  green:0.0
                   blue:0.0
                  alpha:1.0];

// Render
[KBSpline renderWithWidth:2];

// If you don't want to specify width, then just
// [KBSpline render];

// Displaying the point locations and colors
glPointSize(12);
glBegin(GL_POINTS);
glColor3f(1.0,1.0,1.0);
glVertex2d(100,500);
glColor3f(1.0,0.0,0.0);
glVertex2d(100,100);
glColor3f(0.0,1.0,0.0);
glVertex2d(500,100);
glColor3f(0.0,0.0,1.0);
glVertex2d(500,500);
glColor3f(1.0,1.0,1.0);
glVertex2d(900,500);
glColor3f(1.0,0.0,0.0);
glVertex2d(900,100);
glEnd();
