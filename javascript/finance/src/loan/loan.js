function Finance() {};

Finance.CalcMonthlyPayment = function (a,monthlyInterestRate, duration) {

    var Q = (1 + monthlyInterestRate);
    var n = duration;
    var monthlyPayment =  a * Math.pow(Q,n) * (1-Q) / (1 - Math.pow(Q,n));
    return monthlyPayment;
    
}

Finance.CalcEquivalentRate = function (annualRate) {

    var value = (Math.pow(annualRate + 1, 12) - 1) * 100;
    return value;
    
}

Finance.NPV = function (rate, duration, FVArray) {

    
    var NPV = 0;
    
    for (i = 0; i < (duration + 1); i++) {
    // for (var i in FVArray) {
        
        FV_i = FVArray[i];
        NPV = NPV + FV_i / Math.pow((1 + rate),i);

    }

    // var Q = 1 / (1 + rate);
    // var GR = (1 - Math.pow(Q,i))/(1-Q);     
    // NPV = FVArray[0] + FVArray[1] * GR;
    var result = NPV;
    return result;

}


Finance.Interest = function(principal,rate, monthlyPayment, i) {

    var p = principal;
    var Q = 1 + rate;
    var m = monthlyPayment;
    var GR = (1 - Math.pow(Q,i))/(1-Q);   
    var result = (p*Math.pow(Q,i) - m * GR) * (Q - 1);    
    return result;    

}

Finance.Owed = function (principal, rate, monthlyPayment, i) 
{
    var p = principal;
    var Q = 1 + rate;
    var m = monthlyPayment;
    var GR = (1 - Math.pow(Q,i))/(1-Q);   
    var result = p*Math.pow(Q,i) - (m * GR);    
    return result;
}
