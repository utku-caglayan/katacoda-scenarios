* Type `browser` and hit Enter - you'll enter the sql browser
* Provide feedback to Jiri Holusa directly via Slack/email about which one was the most intuitive



CREATE MAPPING cities (__key INT, countries VARCHAR, cities VARCHAR) type IMap OPTIONS('keyFormat'='int', 'valueFormat'='json-flat');