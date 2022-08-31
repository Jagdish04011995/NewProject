trigger AccountCreatHelper on Account (After insert) {
ClassHelperName.Method(trigger.new);
}