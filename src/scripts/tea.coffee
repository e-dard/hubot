# Description:
#   Decide who makes the tea. Supports comma-separated first names or 
#   initials.
#
# Commands:
#   hubot tea <person>, <person>, ..., <person>
#
# Author:
#   e-dard

allNames =
  "alex": "Alex"
  "ar": "Alex"
  "amanda": "Amanda"
  "af": "Amanda"
  "brad": "Brad"
  "bj": "Brad"
  "chris": "Chris"
  "cm": "Chris"
  "dan g": "Dan G"
  "dg": "Dan G"
  "dan h": "Dan H"
  "dh": "Dan H"
  "dwain": "Dwain"
  "df": "Dwain"
  "edd": "Edd"
  "er": "Edd"
  "jamie": "Jamie"
  "jp": "Jamie"
  "jin": "Jin"
  "jx": "Jin"
  "joe": "Joe"
  "jj": "Joe"
  "lee-jon": "Lee-Jon"
  "lb": "Lee-Jon"
  "rich": "Rich"
  "rw": "Rich"
  "sam": "Sam"
  "sw": "Sam"

module.exports = (robot) ->
  robot.respond /tea (.+)/i, (msg) ->
    names = []
    for name in msg.match[1].split /[,]+/
      name = name.toLowerCase().replace /^\s+|\s+$/g, ""
      if name of allNames
        names.push allNames[name]
      else
        msg.reply "Who is #{name}??"

    selection = msg.random names
    if selection
      memeGenerator msg, 'all_the_things.jpg', "#{selection} MAKES", "ALL THE TEA!!", (url) ->
        msg.send url

# pilfered from meme_captain.coffee
memeGenerator = (msg, imageName, text1, text2, callback) ->
  imageUrl = "http://v1.memecaptain.com/" + imageName
  msg.http("http://v1.memecaptain.com/g")
  .query(
    u: imageUrl,
    t1: text1,
    t2: text2
  ).get() (err, res, body) ->
    return msg.send err if err
    result = JSON.parse(body)
    if result? and result['imageUrl']?
      callback result['imageUrl']
    else
      msg.reply "Sorry, I couldn't generate that meme."
