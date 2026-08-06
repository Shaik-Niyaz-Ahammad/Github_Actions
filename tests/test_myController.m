classdef test_myController < matlab.unittest.TestCase
 methods(Test)
 function testWithinRange(tc)
     out = myController(0.5);
     tc.verifyEqual(out, 0.6, 'AbsTol', 1e-12);
 end
 function testSaturationHigh(tc)
     out = myController(2);
     tc.verifyEqual(out, 1.1, 'AbsTol', 1e-12);
 end
 function testSaturationLow(tc)
     out = myController(-5);
     tc.verifyEqual(out, -0.9, 'AbsTol', 1e-12);
 end
 end
end