<img src="https://github.com/yugabyte/yugabyte-db/raw/master/architecture/images/ybDB_horizontal.jpg" width="256"/> <img src="https://brew.sh/assets/img/homebrew-256x256.png" height="72">

# The Yugabyte DB Homebrew Tap

This is a custom [Homebrew](https://brew.sh) tap for official Yugabyte DB.

## Setup

You can add the custom tap in a macOS terminal session using:

```
$ brew tap yugabyte/yugabyte
```

## Installing Formulae

Once the tap has been added locally, you can install individual software packages with:

```
$ brew install <formula>
```

For example:

 * Install the latest available production release of YugabyteDB. This will currently install YUgabyte 2.0.5.2:
 ```
 $ brew install yugabyte
 ```

 * Install Yugabyte CLI tools :
 ```
 $ brew install yugabyte-cli
 ```



## Default Paths for the Yugabyte Formula

In addition to installing the Yugabyte server and tool binaries, the `yugabyte` formula creates:

 * log directory path: `/usr/local/var/log/yugabyte`
 * configuration file: `/usr/local/etc/yugabyte.conf`
 * data directory path: `/usr/local/var/yugabyte_data`

## Starting the Yugabyte Server

### Run `yugabyte` as a service

To have start `yugabyte` immediately and also restart at login, use:

```
$ brew services start yugabyte
```
If you manage `yugabyted` as a service it will use the default paths listed above. To stop the server instance use:

```
$ brew services stop yugabyte
```

### Start `yugabyte` manually

If you want yo run Yugayte manually then, you can run:

```
$ yugabyted start --config /usr/local/etc/yugabyte.conf
```
Note: if you do not include the `--config` option with a path to a configuration file, the Yugabyte server will start with the default config.