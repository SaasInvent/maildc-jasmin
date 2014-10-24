# calculatorSpec.coffee

describe 'MailDC', ->

    it 'can set name', ->
        result = maildc.info.setName "hallo"
        expect(result).toBe "hallo"

    it 'can get name', ->
        name = maildc.info.setName "hallo"
        result = maildc.info.getName()
        console.log result
        expect(result).toEqual "hallo"