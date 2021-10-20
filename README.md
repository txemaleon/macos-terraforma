# macOS install script

This repo installs all my personal configurations and most used applications.

## To install in a new computer

```sh
git clone git@github.com:txemaleon/macos-terraforma.git
cd macos-terraforma
./installer.sh
```

## To prepare a migration to a new computer

```sh
git clone git@github.com:txemaleon/macos-terraforma.git
cd macos-terraforma
./prepare-migration.sh
git commit -a -m "Update packages and new migration"
git push
```

Then in the new computer go back to install step
