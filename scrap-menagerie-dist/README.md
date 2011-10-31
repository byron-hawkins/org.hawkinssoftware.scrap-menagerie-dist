Scrap Menagerie Binary Assembly
-------------------------------

This is the executable distribution assembler for the 
[Scrap Menagerie][app], a simple clipboard management utility.

[app]: https://github.com/byron-hawkins/org.hawkinssoftware.scrap-menagerie-app/blob/master/scrap-menagerie-app/README.md

#### Artifact

A binary distribution archive named **scrap-menagerie-app.zip** 
containing:

* **scrap-menagerie.bat** *launches the app*
* agent/
    * [rns-agent].jar
* lib/ 
    * *all pure java dependencies*
* native/
    * [NativeInput].x86.dll
    * [NativeInput].x64.dll

[rns-agent]: https://github.com/byron-hawkins/org.hawkinssoftware.rns-agent/blob/master/rns-agent/README.md
[NativeInput]: https://github.com/byron-hawkins/org.hawkinssoftware.azia-native-input/blob/master/azia-native-input/README.md


#### Build

Execute the following Maven goals in sequence:

1. `clean`
2. `package`
3. `org.apache.maven.plugins:maven-assembly-plugin:2.2.1:single`

#### Installation

Unzip it and run the .bat file.
