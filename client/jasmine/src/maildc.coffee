@maildc = @maildc ? {}

@maildc.index = do ->
	#private
  name= "MailDC"

  class Index
    constructor: (@index)->
   
    getIndex:(account) ->
      flash = $("#flash")
      flash[0].getIndex(account)
      console.log flash
      @
 
      
    saveIndex:(value)->
      console.log "saveIndex"
      console.log value
      console.log @index
      value
 
#  end of class Index      
      
  saveIndex = (value) ->
    index = new Index(value)
   #console.log index.saveIndex("saved")
    index.saveIndex(value)
    
  getIndex = (account)-> 
    console.log account
    index = new Index(account)
    console.log index
    console.log index.index
    index
    @



	# public
  getIndex: getIndex
  saveIndex: saveIndex
