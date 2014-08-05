class role::jira_application_server inherits role {
  include profile::java_jdk
  include profile::jira_server
}
