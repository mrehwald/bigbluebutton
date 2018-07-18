TOVERSION="scalaVersion  := \"2.12.7\""
VERSIONSUSED=$(find ./ -name build.sbt -exec grep '^scalaVersion' {} \; |sort|uniq)
for vs in $VERSIONSUSED; do find ./ -name build.sbt -exec sed -i 's/scalaVersion := \"2.12.6\"/scalaVersion  := \"2.12.7\"/' {} \; -print; done
