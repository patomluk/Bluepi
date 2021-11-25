import POSTLoginAuth from "../../support/keywords/common"
let fixture;
var randomstring = require("randomstring");

before(() => {
    cy.fixture('testdata.json').then(function (data) {
        fixture = data
    })
})

describe(`API Login auth`, function () {
    it('Login success',() => {
        POSTLoginAuth.POSTLoginSuccess(fixture.valid_data.phone_number,fixture.valid_data.user_pin)
    })
    it('Login fail - invalid data',() => {
        POSTLoginAuth.POSTLoginFail_E401(fixture.invalid_data.phone_number,fixture.invalid_data.user_pin)
    })
    it(`Login fail - missing required body parameters`,() => {
        POSTLoginAuth.POSTLoginFail_E402(null,fixture.valid_data.user_pin)
        POSTLoginAuth.POSTLoginFail_E402(fixture.valid_data.phone_number,null)
    })
    it(`Login fail - invalid phone_number`,() => {
        POSTLoginAuth.POSTLoginFail_E403("11111111111",fixture.valid_data.user_pin)
        POSTLoginAuth.POSTLoginFail_E403("xxxxxxxxxx",fixture.valid_data.user_pin)
    })
    it(`Login fail - invalid user_pin`,() => {
        POSTLoginAuth.POSTLoginFail_E404(fixture.invalid_data.phone_number,"1111111")
        POSTLoginAuth.POSTLoginFail_E404(fixture.invalid_data.phone_number,"xxxxxx")
    })
    it(``,() => {
        POSTLoginAuth.POSTLoginFail_E500(fixture.valid_data.phone_number,fixture.valid_data.user_pin)
    })
})