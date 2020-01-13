# Pursuit-Core-iOS-UserDefaults-Lab


Use the endpoint at: http://sandipbgt.com/theastrologer/api/horoscope/gemini/today to build a Horoscope app.


This app will have two states:

- No user defaults set
- User defaults set


V1:

When the app loads (App Delegate), it should check User Defaults to see whether a user's information was saved with a name and horoscope sign.
 

### State -  No user defaults (aka first launch)

In this state there are no defaults saved. Prompt the user to add and save this info. However you choose: present a UI that lets them select their horoscope.  Save it into UserDefaults.  Then, show a VC that displays their horoscope information to them.


### State - Defaults are saved (aka subsequent launches)

Immediately present the user's current horoscope.

Your user should always be able to edit their name and horoscope to see their updated horoscope, and persist that information to UserDefaults.

## V2: Birthday

Refactor you app to instead prompt for the user's birthday.  Then, translate the birthday into the appropriate horoscope sign.
