#!/bin/bash
if [[ $run_sonar == "YES" ]]; then
  echo "Running SonarQube analysis..."
  mvn clean verify sonar:sonar \
    -Dsonar.projectKey=test \
    -Dsonar.projectName='test' \
    -Dsonar.host.url=http://3.110.186.80:9000 \
    -Dsonar.token=sqp_3cda060719e75ec81dc64c2243d9adafa6b8b3db
else
  echo "running maven without sonarqube"
  mvn clean verify
fi
