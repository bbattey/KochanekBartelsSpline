# KochanekBartelsSpline

Mac Objective-C class to render a Kochanek Bartels Spline through a series of points.

Objective-C MacOS (tested on OS 10.11.2) + OpenGL

Includes the extra benefit of interpolating colors between the given points.

A Kochanek Bartels Spline provides Tension, Continuity and Bias controls that can alter the curvature of the spline as it goes through the given points. Hence it is also sometimes called a TCB spline. It was originally developed to provide smooth animation keyframing.

Keeping the TCB parameters within their normal -1 to 1 range probably makes sense for keyframing applications. But some wonderful graphic results can arise if setting the parameters outside of that range.

If the TCB parameters are set to 0, the result is a Catmull-Rom spline.

The file kbExampleUsage.m shows how to use the class, but it is not standalone code; it would need to be embedded in some other piece of code.

The file kbExample.png shows the result.

Primary source:
Kochanek and Bartels (1984) "Interpolating Splines with Local Tension, Continuity, and Bias Control". In Computer Graphics, 18(3), pp.33-41.

Bret Battey / BatHatMedia.com






