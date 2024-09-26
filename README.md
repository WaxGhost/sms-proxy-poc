# sms-proxy-poc

Broadly speaking, I would consider this proof of concept a success if we can:

1. Get a number from Twilio
  a. Register Twilio client
  b. Fetch number from pool of purchased numbers
2. Wait on SMS messages to the number
3. Read the contents of the SMS messages
4. Forward those messages to personal number

I don't know if #2 is possible in the sense that Twilio might prefer we use their services entirely for all communciation. E.g. sending and receiving all traffic via API. I think there might be webhooks available though which we can use in this situation.
