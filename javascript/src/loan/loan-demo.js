var BusinessRules = {

    "netFinancedThreadhold": 250000,
    "annualRate1": 15,
    "annualRate2": 45,
    
    "getAnnualRateForNetFinanced": function(netFinanced, annualRate) {
        if (netFinanced > this.netFinancedThreadhold) {
            return this.annualRate1;
        } else {
            return this.annualRate2;
        }
    },
    
    "getMonthlyPayment": function(netFinanced, annualRate, duration, fees) {
        
        var monthlyInterestRate = annualRate / 12 / 100;
        var a = (netFinanced + fees);
        var monthlyPayment = Finance.CalcMonthlyPayment(a,monthlyInterestRate,duration);
        return monthlyPayment;
        
    },
    
    "getMonthlyPaymentWithoutFees": function(netFinanced, annualRate, duration) {

        return this.getMonthlyPayment(netFinanced, annualRate, duration, 0);
        
    },
    
    
    "getAnnualRate": function(monthlyPayment_target, netFinanced, duration, annualRate_start) {
    
        //--- 2 Phases Algorithm for Iterative Calculation of Annual Rate
    
        //--- Phase 1: rough estimation
        
        var step0 = 1;
       
        var annualRate = annualRate_start;
        var monthlyPayment0 = this.getMonthlyPaymentWithoutFees(netFinanced, annualRate, duration);
        var diff0 = (monthlyPayment_target - monthlyPayment0);
        var monthlyPayment = monthlyPayment0;
        
        var criteria = 1;
        var i = 0
        var step_i = step0;
        var previous_annualRate;
        if (diff0 < 0) {
            step_i = step_i * (-1.0);
        }
        while (criteria > 0) {
            i = i + 1;
            previous_annualRate = annualRate;
            annualRate = annualRate_start + (step_i * i);
            monthlyPayment = this.getMonthlyPaymentWithoutFees(netFinanced, annualRate, duration);
            criteria = (monthlyPayment_target - monthlyPayment) * diff0 ;
       }
       
        //--- Phase 2: refinement
        
        criteria = 1;
        i = 0;     
        var diff = monthlyPayment_target - monthlyPayment;
        while (Math.abs(diff) > 0.01) {
            i = i + 1;
            step_i = (Math.abs(annualRate - previous_annualRate)) / 2;  
            monthlyPayment = this.getMonthlyPaymentWithoutFees(netFinanced, annualRate, duration);
            diff = monthlyPayment_target - monthlyPayment; 
            previous_annualRate = annualRate;
            if (diff < 0) {
                annualRate = annualRate - step_i ;
            } else {
                annualRate = annualRate + step_i ;
            }            
            
       }     

        return annualRate;
    },
    
    "getEquivalentRate": function(nominalRate) {
        
        var monthlyInterestRate = nominalRate / 100 / 12;
        var equivalentRate = Finance.CalcEquivalentRate(monthlyInterestRate);
        return equivalentRate;
        
    },
    
//    "getEffectiveRate": function(monthlyPayment_target, netFinanced, duration, annualRate_start) {
        
//        var monthlyInterestRate = annualRate_start / 100 / 12;
//        var result = this.getAnnualRate(monthlyPayment_target, netFinanced, duration, annualRate_start);
//        result = this.getEquivalentRate(result);
//        return result;
        
//    },

    "getEffectiveRate": function(netFinanced, fees, duration, annualRate) {
        
        var monthlyPayment_target = this.getMonthlyPaymentWithoutFees(netFinanced + fees, annualRate, duration);
        var result = this.getAnnualRate(monthlyPayment_target, netFinanced, duration, annualRate);
        result = this.getEquivalentRate(result);
        return result;
        
    },      
    
    "getAmortizationTable": function(principal,rate, monthlyPayment) {
    
        var amortizationTable = new Array(6);
        
        var interestPaid_i;
        var principalPaid_i;
        var owed_i;
        
        for (i = 0; i < 6; i++) {
        
            interestPaid_i = Finance.Interest(principal,rate, monthlyPayment, i);
            principalPaid_i = monthlyPayment - interestPaid_i;
            owed_i = Finance.Owed(principal,rate, monthlyPayment, i);
            
            amortizationTable[i] = new Array(4);
            amortizationTable[i][0] = i + 1; 
            amortizationTable[i][1] = interestPaid_i.toFixed(2);
            amortizationTable[i][2] = principalPaid_i.toFixed(2);
            amortizationTable[i][3] = owed_i.toFixed(2);
        }

        return amortizationTable;
    
    }
    
}