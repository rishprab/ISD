    //Payment Information validator 

    public Validator validateCardNumber(String cardNumber) {
        if (!validate(cardNumberPattern, cardNumber)){
            request.setAttribute("cardNumberVErr", "Credit Card format incorrect. Must be 16 digits");
            failed = true;
        }
    
        return this;
    }

    public Validator validateCvv(String cvv) {
        if (!validate(cvvPattern, cvv)){
            request.setAttribute("cvvVErr", "CVV format incorrect. Must be 3 digits");
            failed = true;
        }
    
        return this;
    }

    public Validator validateExpiryMonth(String expiryMonth) {
        if (!validate(expiryMonthPattern, expiryMonth)){
            request.setAttribute("expiryMonthVErr", "Month format incorrect. Must be 2 digits");
            failed = true;
        }
    
        return this;
    }

    public Validator validateExpiryYear(String expiryYear) {
        if (!validate(expiryYearPattern, expiryYear)){
            request.setAttribute("expiryYearVErr", "Year format incorrect. Must be 4 digits");
            failed = true;
        }
        
        return this;
    }
