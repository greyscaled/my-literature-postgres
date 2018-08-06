# My Literature Postgres :books:

Bash interface to a local Postgres Database for managing books.
Checkout a similar project [My Music Postgres](https://github.com/vapurrmaid/my-music-postgres)

## Installation
> **WARNING** This program was developed on a Windows 10 machine and was not tested elsewhere. There are likely obvious bugs if porting the software as-is to other platforms.

If you wish to use this program, make sure you have [postgresql installed](https://www.postgresql.org/download/) on your system and in your path. You can always test if this is the case by simply running on of the binaries included with the installation:

```bash
createdb --version
```

Depending on whether or not you cloned the repository or downloaded the files, you may have to run:

```bash
dos2unix my-lit
```

Furthermore, you'll want to make sure it's executable
```bash
chmod u+x my-lit
```

### Creating
If using this tool for the first time, you can simply run `my-lit --create`. However, **make sure you are in the same directory as the script.** This step is not necessary, though, as you can create a database using any other mechanism such as `createdb` or PgAdmin.

Be sure to call your database `MyLiterature` OR change the `dbname` variable in the script if you use a different name. Likewise the default user and password are both `postgres`.

### Setting an Alias
Other than using `--create`, the script can be run from anywhere. You can add the script to a `/local/bin` folder (and make sure it's in your path). I simply just referenced the repository location on my computer from `~/.bashrc`:

```bash
alias my-lit="<PATH TO DIRECTORY>/my-lit"
```

## How To Use

my-lit [[-c dbname user] | [-d dbname user] | [-h] | [-i]]

-c, --create    creates database
-d, --delete    deletes database. Cannot be undone.
    dbname [default=MyMusic]
    user [default=postgres]
-h, --help  displays command line options
-i, --interactive   ineractively add authors, books, view lists and more.

### Changing Default Database, User, Password
>**SECURITY WARNING:** The database name, user and password are all hard-coded in the script for simplicity. It is assumed that this is to be run on **personal machines only**.

The defaults are set to:
- database name = MyLiterature
- user = postgres
- password = postgres

Simply change the values in the file `my-lit` if you use a different setup.

```
########## VARIABLES ##########

## Database info
user=postgres
password=postgres
dbname=MyLiterature
```

## Contributions [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
Feel free to open a PR with bugs or patches to more easily port this script to other platforms. You can also propose new functionalities.