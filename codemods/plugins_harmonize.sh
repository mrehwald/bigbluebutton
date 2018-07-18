find -name plugins.sbt -exec cat {} >> /tmp/plugins_dump.sbt \;
cat /tmp/plugins_dump.sbt |sort|uniq > /tmp/plugins_sorted.sbt
cp /tmp/plugins_sorted.sbt /tmp/plugins_new.sbt
#manually review and update versions to latest
find -name plugins.sbt -exec cat /tmp/plugins_new.sbt > {} \;

