function [testingresult, testingerror] = testing(testingtarget, testingdata, f0, w1, w2)
    
    w1x = w1 * transpose(testingdata);
    z1 = transpose(f0(w1x));
    w2x = w2 * transpose(z1);
    testingresult = w2x;
  
    [testingerror] = errorcalc(testingresult, testingtarget);

end