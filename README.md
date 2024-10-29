
<a href="https://github.com/yugabyte/homebrew-tap/actions"><img alt="GitHub release" src="https://github.com/yugabyte/homebrew-yugabytedb/actions/workflows/update-formula-version.yaml/badge.svg"></a>

<img src="https://www.yugabyte.com/wp-content/themes/yugabyte/assets/images/yugabyteDB-site-logo-new-blue.svg" width="256"/> <img src="https://brew.sh/assets/img/homebrew-256x256.png" height="72">

# The Yugabyte DB Homebrew Tap

This is a custom [Homebrew](https://brew.sh) tap for official Yugabyte DB.

## Setup

You can add the custom tap in a macOS terminal session using:

```
brew tap yugabyte/yugabytedb
```

## Installing Formulae

Once the tap has been added locally, you can install individual software packages with:

```
brew install <formula>
```

For example:

 * Install the latest available production release of YugabyteDB. This will currently install latest stable YugabyteDB 2.16.0.1 release:
 ```
 brew install yugabytedb
 ```
 * Install the latest 2.17.0.0 preview release of YugabyteDB:
 ```
 brew install yugabytedb@2.17
 ```
 * Install Yugabyte CLI tools :
 ```
 brew install yugabytedb-client
 ```
 * Install the latest 2.0.x release of Yugabyte CLI tools:
 ```
 brew install yugabytedb-client@2.0
 ```

## Start YugabyteDB cluster

After successful installation, you can start a local 1-node cluster using:
```
yugabyted start
```
For more commands and flags of YugabyteDB CLI, please refer to our [docs page](https://docs.yugabyte.com/preview/reference/configuration/yugabyted/).

## Updating YugabyteDB using brew

Update the internal list of brew formulae:
```
brew update
```
Ugrade YugabyteDB stable release using:
```
brew upgrade yugabytedb
```
You can also update YugabyteDB by again running:
```
brew install yugabytedb
```
