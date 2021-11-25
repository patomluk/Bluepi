class POSTLoginAuth {
    POSTLoginSuccess(phonenumber,pin){
        var body = {
            phone_number: phonenumber,
            user_pin: pin
        }
        cy.request('POST','11.11.11.11/api/v1/auth/login',body).then((response)=>{
            expect(response.status).equal(200)
            expect(response.body.status).equal("SUCCESS")
            expect(response.body.code).equal(200)
            expect(response.body.service_code).equal("S200")
            expect(response.body.service_message).equal("Login Success")       
            expect(response.body.user_token).to.have.lengthOf(16)    
        })
        return this
    }

    POSTLoginFail_E401(phonenumber,pin){
        var body = {
            phone_number: phonenumber,
            user_pin: pin
        }
        cy.request('POST','11.11.11.11/api/v1/auth/login',body).then((response)=>{
            expect(response.status).equal(400)
            expect(response.body.status).equal("ERROR")
            expect(response.body.code).equal(400)
            expect(response.body.service_code).equal("E401")
            expect(response.body.service_message).equal("Login Unsuccess")       
        })
        return this
    }

    POSTLoginFail_E402(phonenumber,pin){
        var body = {
            phone_number: phonenumber,
            user_pin: pin
        }
        cy.request('POST','11.11.11.11/api/v1/auth/login',body).then((response)=>{
            expect(response.status).equal(400)
            expect(response.body.status).equal("ERROR")
            expect(response.body.code).equal(400)
            expect(response.body.service_code).equal("E402")
            expect(response.body.service_message).equal("Missing reqpuired parameters")       
        })
        return this
    }

    POSTLoginFail_E403(phonenumber,pin){
        var body = {
            phone_number: phonenumber,
            user_pin: pin
        }
        cy.request('POST','11.11.11.11/api/v1/auth/login',body).then((response)=>{
            expect(response.status).equal(400)
            expect(response.body.status).equal("ERROR")
            expect(response.body.code).equal(400)
            expect(response.body.service_code).equal("E403")
            expect(response.body.service_message).equal("phone_number is invalid format")       
        })
        return this
    }

    POSTLoginFail_E404(phonenumber,pin){
        var body = {
            phone_number: phonenumber,
            user_pin: pin
        }
        cy.request('POST','11.11.11.11/api/v1/auth/login',body).then((response)=>{
            expect(response.status).equal(400)
            expect(response.body.status).equal("ERROR")
            expect(response.body.code).equal(400)
            expect(response.body.service_code).equal("E404")
            expect(response.body.service_message).equal("user_pin is invalid format")       
        })
        return this
    }

    POSTLoginFail_E500(phonenumber,pin){
        var body = {
            phone_number: phonenumber,
            user_pin: pin
        }
        cy.server().route({
            method : 'POST',
            url : '11.11.11.11/api/v1/auth/login',
            body : body,
            status : 500
        }).then((response)=>{
            expect(response.status).equal(500)
            expect(response.body.status).equal("ERROR")
            expect(response.body.code).equal(500)
            expect(response.body.service_code).equal("E500")
            expect(response.body.service_message).equal("Server down")       
        })
        return this
    }
    
}

export default new POSTLoginAuth();