trigger NewInventions on Account (before insert,before update) {
NewInvention.Method(Trigger.new);
}