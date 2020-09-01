# teamcity-httpheader-auth

HTTP Headers authentication plugin.

Branches:

* `headers-keycloak-gatekeeper` changed headernames to be compatible with keycloak gatekeeper [https://hub.docker.com/r/keycloak/keycloak-gatekeeper/dockerfile] (based on [https://github.com/louketo/louketo-proxy])

## Summary
Will allow authenticated access to Teamcity to http requests with the following (hardcoded) headers:
* `X-Auth-Email` (the username of the user and the email address)
* `X-Auth-Username` (The name of the user)

This might be useful when Teamcity instances are hosted behind a reverse-proxy which is responsible for authentication.

## Installation

Install to Teamcity following https://confluence.jetbrains.com/display/TCD18/Installing+Additional+Plugins

## Configuration

Nope

## Development

Plugin can be build by `gradle serverPlugin`. The plugin zip file will be available in `build/distributions`

    docker build -f build.Dockerfile -t buildtcheader .
    docker run --rm -v `pwd`/build:/home/gradle/src/build -it buildtcheader gradle build

## Release a new version

```
# Example for version 0.1.0
git tag teamcity-httpheader-auth-0.1.0
gradle serverPlugin
git push origin teamcity-httpheader-auth-0.1.0
# Create release on github https://github.com/red-gate/teamcity-httpheader-auth/releases
# and upload build/distributions/teamcity-httpheader-auth-0.1.0.zip there.
```
