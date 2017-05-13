###
Simplest possible implementation of a JSON API for handling the
messages described smc-util/message.coffee.  NOTHING fancy.

AGPLv3, (c) 2017, SageMath, Inc.
###

misc = require('smc-util/misc')
{defaults, required} = misc

exports.http_message_api_v1 = (opts) ->
    opts = defaults opts,
        message : required
        api_key : undefined    # some endpoints don't require login
        cb      : required
    