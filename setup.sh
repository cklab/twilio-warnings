TWILIO_COMMON_VERSION="0.2.0"
TWILIO_COMMON=twilio-common-ios-$TWILIO_COMMON_VERSION
TWILIO_CONVO_VERSION="0.22.0"
TWILIO_CONVO=twilio-conversations-ios-$TWILIO_CONVO_VERSION

echo "Downloading twilio conversation..."
curl https://media.twiliocdn.com/sdk/ios/conversations/releases/$TWILIO_CONVO_VERSION/twilio-conversations-ios-$TWILIO_CONVO_VERSION.tar.bz2 -o $TWILIO_CONVO.tar.bz2

echo "Downloading twilio common..."
curl https://media.twiliocdn.com/sdk/ios/common/releases/$TWILIO_COMMON_VERSION/$TWILIO_COMMON.tar.bz2 -o $TWILIO_COMMON.tar.bz2


echo "Extracting libraries..."
tar -jxf $TWILIO_COMMON.tar.bz2
tar -jxf $TWILIO_CONVO.tar.bz2
echo "Cleaning up."
rm -f $TWILIO_COMMON.tar.bz2
rm -f $TWILIO_CONVO.tar.bz2
mkdir libs
mv twilio-common-ios/TwilioCommon.framework libs/
mv twilio-conversations-ios/TwilioConversationsClient.framework libs/

rm -rf twilio-common-ios
rm -rf twilio-conversations-ios

echo "Done."
