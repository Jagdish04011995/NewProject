trigger AccountRestricDeleteCall on Account (before Delete) {
DeleteRestricHelper.Method(trigger.old);
}