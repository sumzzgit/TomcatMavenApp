#!/bin/bash
if [[ $run_sonar == "YES" ]]; then
  echo "Running SonarQube analysis..."
  mvn clean verify sonar:sonar \
    -Dsonar.projectKey=test \
    -Dsonar.projectName="test" \
    -Dsonar.host.url=http://13.201.65.96:9000 \
    -Dsonar.token=sqp_86bc3368f6da1889773c3c1ba6f39189ff884436
else
  echo "nothing ................."
fi
