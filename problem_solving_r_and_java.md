R can have an issue with using the most current Java version.

This is a problem if you wish to use JDBC to use the most recent Redshift Jars.

You can check the runtime version with: 
```R
library(rJava)
.jinit()
.jcall("java/lang/System", "S", "getProperty", "java.runtime.version")
```

If it is not your most current version you'll have to follow along: 

You may need to reinstall the original Mac supplied [Java 1.6](http://support.apple.com/kb/DL1572) to get Java 1.8 to work properly. [Issue](https://github.com/s-u/rJava/issues/37)

For the following make sure to update the paths to the version you have.
You may need to make sure the paths are in the environment. 
Add the following to your shell profile:

```bash
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/jre"
export LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/jre/lib/server 
export PATH=$PATH:$JAVA_HOME/bin
```

You may need to also set your java options in R:

```R
options(java.home="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk")
Sys.setenv(DYLD_FALLBACK_LIBRARY_PATH="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/jre/lib/server/")
```

Then run ```sudo R CMD javareconf```.
Then run ```sudo R``` and run ```install.packages('rJava',,'http://www.rforge.net/')```.

If all goes well, when you run

```R
library(rJava)
.jinit()
.jcall("java/lang/System", "S", "getProperty", "java.runtime.version")
```

you should now see the correct version listed.

For future reference, these instructions were pulled from [here](http://stackoverflow.com/questions/26948777/how-can-i-make-rjava-use-the-newer-version-of-java-on-osx) and [here](http://stackoverflow.com/questions/30738974/rjava-load-error-in-rstudio-r-after-upgrading-to-osx-yosemite/31039105#31039105)
