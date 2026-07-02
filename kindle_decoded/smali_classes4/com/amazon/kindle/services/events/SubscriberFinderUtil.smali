.class public Lcom/amazon/kindle/services/events/SubscriberFinderUtil;
.super Ljava/lang/Object;
.source "SubscriberFinderUtil.java"


# static fields
.field private static final CLASSPATH_FULL_KEY:Ljava/lang/String; = "--classpath"

.field private static final CLASSPATH_KEY:Ljava/lang/String; = "-cp"

.field private static final CLASS_FULL_KEY:Ljava/lang/String; = "--classname"

.field private static final CLASS_KEY:Ljava/lang/String; = "-c"

.field private static final GEN_DIR_FULL_KEY:Ljava/lang/String; = "--source"

.field private static final GEN_DIR_KEY:Ljava/lang/String; = "-s"

.field private static final JAVA_HOME_FULL_KEY:Ljava/lang/String; = "--java-home"

.field private static final JAVA_HOME_KEY:Ljava/lang/String; = "-jh"

.field private static final OUTPUT_FULL_KEY:Ljava/lang/String; = "--output"

.field private static final OUTPUT_KEY:Ljava/lang/String; = "-o"

.field private static final PACKAGE_FULL_KEY:Ljava/lang/String; = "--package"

.field private static final PACKAGE_KEY:Ljava/lang/String; = "-p"

.field private static final SCAN_PACKAGE_FULL_KEY:Ljava/lang/String; = "--scan-package"

.field private static final SCAN_PACKAGE_KEY:Ljava/lang/String; = "-sp"

.field private static USE_SCAN_PACKAGE_FULL_KEY:Ljava/lang/String; = "--use-scan-package"

.field private static USE_SCAN_PACKAGE_KEY:Ljava/lang/String; = "-usp"


# instance fields
.field private classDir:Ljava/lang/String;

.field private classname:Ljava/lang/String;

.field private classpath:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private genDir:Ljava/lang/String;

.field private javaHome:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private scanPackage:Ljava/lang/String;

.field private useScanPackage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target/gen"

    .line 77
    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->genDir:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.services.events"

    .line 78
    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->packageName:Ljava/lang/String;

    const-string v0, "SubscriberFinder"

    .line 79
    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classname:Ljava/lang/String;

    const-string v0, "build/classes"

    .line 80
    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classDir:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classpath:Ljava/lang/String;

    const-string v0, "com.amazon"

    .line 82
    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->scanPackage:Ljava/lang/String;

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->useScanPackage:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->parseOptions([Ljava/lang/String;)Z

    return-void
.end method

.method private compile()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classpath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 530
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 532
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    check-cast v2, Ljava/net/URLClassLoader;

    invoke-virtual {v2}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v2

    .line 531
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 533
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "path.separator"

    .line 534
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "java.class.path"

    .line 536
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classpath:Ljava/lang/String;

    .line 542
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java home: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    const-string v2, "bin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 550
    iget-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    const-string v3, "jre"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/../bin/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    goto :goto_1

    .line 553
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bin/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    .line 558
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "javac"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "-source"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "1.7"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v5, "-target"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "-classpath"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classpath:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "-d"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classDir:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x800

    new-array v3, v2, [B

    .line 564
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 565
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 567
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 568
    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 569
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 571
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generated code failed compilation "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method private findSubscribers()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "            return;\n"

    const-string v2, "        Class subscriberClass = listener.getClass();\n"

    const-string v3, "        TopicEventHandler handler = null;\n"

    const-string v4, "        Collection<TopicEventHandler> handlers = new ArrayList<TopicEventHandler>();\n"

    const-string v5, "    public Collection<TopicEventHandler> findTopicSubscribers(Object listener) throws Exception\n"

    const-string v6, "        switch(idx){\n"

    const-string v7, "        int idx = indexMap.get(subscriberClass.getCanonicalName());\n"

    const-string v8, "        if (!indexMap.containsKey(subscriberClass.getCanonicalName())){\n"

    const-string v9, "        default:\n"

    const-string v10, "            return null;\n"

    const-string v11, "    }\n"

    const-string v12, "        }\n"

    .line 164
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->genDir:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->packageName:Ljava/lang/String;

    move-object/from16 v16, v3

    const-string v3, "\\."

    invoke-virtual {v15, v3, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    .line 165
    new-instance v3, Ljava/io/File;

    iget-object v13, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    iget-object v13, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v13, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classDir:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    iget-object v13, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classDir:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create directory structure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classname:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".java"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    .line 173
    iget-boolean v3, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->useScanPackage:Z

    const/4 v13, 0x2

    if-nez v3, :cond_3

    .line 174
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOT Using Scan package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->scanPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    new-instance v3, Lorg/reflections/Reflections;

    new-instance v14, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v14}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    new-array v13, v13, [Lorg/reflections/scanners/Scanner;

    new-instance v15, Lorg/reflections/scanners/SubTypesScanner;

    invoke-direct {v15}, Lorg/reflections/scanners/SubTypesScanner;-><init>()V

    const/16 v18, 0x0

    aput-object v15, v13, v18

    new-instance v15, Lorg/reflections/scanners/MethodAnnotationsScanner;

    invoke-direct {v15}, Lorg/reflections/scanners/MethodAnnotationsScanner;-><init>()V

    const/16 v17, 0x1

    aput-object v15, v13, v17

    .line 176
    invoke-virtual {v14, v13}, Lorg/reflections/util/ConfigurationBuilder;->setScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;

    .line 177
    invoke-static {}, Lorg/reflections/util/ClasspathHelper;->forJavaClassPath()Ljava/util/Collection;

    move-result-object v13

    invoke-virtual {v14, v13}, Lorg/reflections/util/ConfigurationBuilder;->setUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v3, v14}, Lorg/reflections/Reflections;-><init>(Lorg/reflections/Configuration;)V

    move-object/from16 v18, v4

    const/4 v13, 0x0

    const/16 v17, 0x1

    goto :goto_1

    .line 179
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Using Scan package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->scanPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    new-instance v3, Lorg/reflections/Reflections;

    new-instance v14, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v14}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    iget-object v15, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->scanPackage:Ljava/lang/String;

    move-object/from16 v18, v4

    const/4 v13, 0x0

    new-array v4, v13, [Ljava/lang/ClassLoader;

    .line 182
    invoke-virtual {v14, v15, v4}, Lorg/reflections/util/ConfigurationBuilder;->forPackage(Ljava/lang/String;[Ljava/lang/ClassLoader;)Lorg/reflections/util/ConfigurationBuilder;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/reflections/scanners/Scanner;

    new-instance v15, Lorg/reflections/scanners/SubTypesScanner;

    invoke-direct {v15}, Lorg/reflections/scanners/SubTypesScanner;-><init>()V

    aput-object v15, v4, v13

    new-instance v15, Lorg/reflections/scanners/MethodAnnotationsScanner;

    invoke-direct {v15}, Lorg/reflections/scanners/MethodAnnotationsScanner;-><init>()V

    const/16 v17, 0x1

    aput-object v15, v4, v17

    .line 183
    invoke-virtual {v14, v4}, Lorg/reflections/util/ConfigurationBuilder;->setScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;

    .line 184
    invoke-static {}, Lorg/reflections/util/ClasspathHelper;->forJavaClassPath()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/reflections/util/ConfigurationBuilder;->setUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v3, v14}, Lorg/reflections/Reflections;-><init>(Lorg/reflections/Configuration;)V

    .line 187
    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v19, v5

    .line 192
    new-instance v5, Ljava/io/FileWriter;

    move-object/from16 v20, v9

    iget-object v9, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->file:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v10

    const-string v10, "package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "//AUTO-GENERATED CLASS, DO NOT CHANGE\n\n"

    .line 194
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "import com.amazon.kindle.krx.events.IEvent;\n"

    .line 196
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "import java.util.ArrayList;\n"

    .line 197
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "import java.util.Collection;\n"

    .line 198
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "import java.util.Map;\n"

    .line 199
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "import java.util.HashMap;\n\n"

    .line 200
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " implements ISubscriberFinder,IEventProcessor\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "{\n\n"

    .line 204
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "    public Collection<EventHandler> findSubscribers(Object listener) throws Exception\n"

    .line 205
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v9, "    {\n"

    .line 206
    invoke-virtual {v5, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v10, "        Class<?> subscriberClass = listener.getClass();\n"

    .line 207
    invoke-virtual {v5, v10}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v22, v10

    .line 210
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v23, v9

    const-string v9, "    public void process(Object listener, String method, Object event) throws Exception{\n"

    .line 213
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "    public void processTopic(Object listener, String method, Object event) throws Exception{\n"

    .line 214
    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :try_start_0
    const-class v9, Lcom/amazon/kindle/krx/events/IEvent;

    .line 218
    invoke-virtual {v3, v9}, Lorg/reflections/Reflections;->getSubTypesOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v24, v5

    .line 220
    :try_start_1
    const-class v5, Lcom/amazon/kindle/krx/events/Subscriber;

    .line 221
    invoke-virtual {v3, v5}, Lorg/reflections/Reflections;->getMethodsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v5

    .line 220
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v5

    move-object/from16 v5, v25

    check-cast v5, Ljava/lang/reflect/Method;

    .line 222
    invoke-static {v5}, Lcom/amazon/kindle/services/events/BaseEventHandler;->getSubscriberAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object v25

    check-cast v25, Lcom/amazon/kindle/krx/events/Subscriber;

    if-eqz v25, :cond_c

    .line 223
    invoke-static/range {v25 .. v25}, Lcom/amazon/kindle/services/events/TopicEventHandler;->hasTopic(Lcom/amazon/kindle/krx/events/Subscriber;)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-nez v25, :cond_c

    move-object/from16 v25, v14

    .line 224
    invoke-static {v5}, Lcom/amazon/kindle/services/events/EventHandler;->getSubscriber(Ljava/lang/reflect/Method;)Lcom/amazon/kindle/services/events/EventHandler;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-eqz v14, :cond_b

    move-object/from16 v27, v6

    .line 226
    :try_start_2
    iget-object v6, v14, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    iput-object v6, v14, Lcom/amazon/kindle/services/events/EventHandler;->paramType:Ljava/lang/Class;

    .line 227
    new-instance v6, Lcom/amazon/kindle/services/events/SubscriberConfig;

    invoke-direct {v6}, Lcom/amazon/kindle/services/events/SubscriberConfig;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v28, v7

    .line 228
    :try_start_3
    iget-object v7, v14, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    iput-object v7, v6, Lcom/amazon/kindle/services/events/SubscriberConfig;->eventType:Ljava/lang/Class;

    .line 229
    iget-object v7, v14, Lcom/amazon/kindle/services/events/EventHandler;->paramType:Ljava/lang/Class;

    iput-object v7, v6, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    .line 230
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    .line 231
    iget-boolean v7, v14, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    iput-boolean v7, v6, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->isBlocking:Z

    .line 232
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .line 234
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v29, :cond_4

    move-object/from16 v30, v12

    .line 236
    :try_start_4
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 237
    invoke-interface {v1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v30, v12

    move-object/from16 v12, v29

    .line 242
    :goto_3
    invoke-interface {v12, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v12, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v3, v7}, Lorg/reflections/Reflections;->getSubTypesOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 248
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 249
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v29

    if-nez v29, :cond_6

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-public derived subscriber is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v29, v6

    .line 255
    new-instance v6, Lcom/amazon/kindle/services/events/SubscriberConfig;

    invoke-direct {v6}, Lcom/amazon/kindle/services/events/SubscriberConfig;-><init>()V

    move-object/from16 v31, v0

    .line 256
    iget-object v0, v14, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    iput-object v0, v6, Lcom/amazon/kindle/services/events/SubscriberConfig;->eventType:Ljava/lang/Class;

    .line 257
    iget-object v0, v14, Lcom/amazon/kindle/services/events/EventHandler;->paramType:Ljava/lang/Class;

    iput-object v0, v6, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    .line 258
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    .line 259
    iget-boolean v0, v14, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    iput-boolean v0, v6, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->isBlocking:Z

    .line 261
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_7

    .line 263
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 264
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 266
    :cond_7
    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 267
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    move-object/from16 v6, v29

    move-object/from16 v0, v31

    goto/16 :goto_4

    :cond_9
    move-object/from16 v31, v0

    .line 272
    const-class v0, Lcom/amazon/kindle/krx/events/Subscriber;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/Subscriber;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/events/Subscriber;->acceptSubTypes()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 273
    iget-object v0, v14, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    .line 274
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    if-eq v0, v7, :cond_a

    .line 276
    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 278
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v29

    .line 277
    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v29

    if-eqz v29, :cond_a

    move-object/from16 v29, v6

    .line 279
    new-instance v6, Lcom/amazon/kindle/services/events/SubscriberConfig;

    invoke-direct {v6}, Lcom/amazon/kindle/services/events/SubscriberConfig;-><init>()V

    .line 280
    iput-object v7, v6, Lcom/amazon/kindle/services/events/SubscriberConfig;->eventType:Ljava/lang/Class;

    .line 281
    iput-object v0, v6, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    .line 282
    iget-boolean v7, v14, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    iput-boolean v7, v6, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->isBlocking:Z

    .line 283
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    .line 284
    invoke-interface {v12, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    move-object/from16 v29, v6

    :goto_8
    move-object/from16 v6, v29

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v12

    :goto_9
    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v1, v20

    move-object/from16 v14, v21

    move-object/from16 v13, v22

    move-object/from16 v10, v23

    move-object/from16 v2, v24

    move-object/from16 v9, v27

    move-object/from16 v5, v28

    goto/16 :goto_1a

    :catchall_1
    move-exception v0

    move-object v5, v7

    move-object v3, v12

    :goto_a
    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v1, v20

    move-object/from16 v14, v21

    move-object/from16 v13, v22

    move-object/from16 v10, v23

    move-object/from16 v2, v24

    move-object/from16 v9, v27

    goto/16 :goto_1a

    :cond_b
    move-object/from16 v31, v0

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v30, v12

    goto/16 :goto_d

    :cond_c
    move-object/from16 v31, v0

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v30, v12

    move-object/from16 v25, v14

    .line 290
    invoke-static {v5}, Lcom/amazon/kindle/services/events/TopicEventHandler;->getSubscriber(Ljava/lang/reflect/Method;)Lcom/amazon/kindle/services/events/TopicEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 292
    new-instance v6, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;

    invoke-direct {v6}, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;-><init>()V

    .line 293
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    .line 294
    iget-object v7, v0, Lcom/amazon/kindle/services/events/TopicEventHandler;->paramType:Ljava/lang/Class;

    iput-object v7, v6, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;->paramType:Ljava/lang/Class;

    .line 295
    iget-boolean v7, v0, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    iput-boolean v7, v6, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->isBlocking:Z

    .line 296
    iget-object v7, v0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    iput-object v7, v6, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;->topic:Ljava/lang/String;

    .line 297
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .line 299
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    if-nez v12, :cond_d

    .line 301
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 302
    invoke-interface {v10, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_d
    invoke-interface {v12, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {v12, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v3, v7}, Lorg/reflections/Reflections;->getSubTypesOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 310
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 311
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v12

    if-nez v12, :cond_10

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-public derived subscriber is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_10
    new-instance v12, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;

    invoke-direct {v12}, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;-><init>()V

    .line 318
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    .line 319
    iget-object v14, v0, Lcom/amazon/kindle/services/events/TopicEventHandler;->paramType:Ljava/lang/Class;

    iput-object v14, v12, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;->paramType:Ljava/lang/Class;

    .line 320
    iget-boolean v14, v0, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    iput-boolean v14, v12, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->isBlocking:Z

    .line 321
    iget-object v14, v0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    iput-object v14, v12, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;->topic:Ljava/lang/String;

    .line 323
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    if-nez v14, :cond_11

    .line 325
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 326
    invoke-interface {v10, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-interface {v14, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 328
    :cond_11
    invoke-interface {v14, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 329
    invoke-interface {v14, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_12
    :goto_d
    move-object/from16 v14, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v12, v30

    move-object/from16 v0, v31

    goto/16 :goto_2

    :cond_13
    move-object/from16 v31, v0

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v30, v12

    move-object/from16 v25, v14

    const-string v0, "    final static Map<String, Integer> indexMap = new HashMap();\n"

    .line 339
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "    static{\n"

    .line 340
    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_14
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    const-string v6, ");\n"

    const-string v7, "\", "

    if-eqz v5, :cond_15

    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 344
    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    add-int/lit8 v3, v3, 0x1

    .line 346
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "        indexMap.put(\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 351
    :cond_15
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    add-int/lit8 v3, v3, 0x1

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "        indexMap.put(\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 359
    :cond_17
    invoke-virtual {v15, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v31

    .line 364
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    move-object/from16 v3, v30

    .line 365
    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-object/from16 v5, v28

    .line 366
    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move-object/from16 v9, v27

    .line 367
    :try_start_8
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v12, v25

    .line 368
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-object/from16 v2, v24

    .line 376
    :try_start_9
    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v14, v21

    .line 377
    :try_start_a
    invoke-virtual {v2, v14}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 378
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 379
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "        Collection<EventHandler> handlers = new ArrayList<EventHandler>();\n"

    .line 380
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "        EventHandler handler = null;\n"

    .line 381
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "        Class<? extends IEvent> paramType = null;\n"

    .line 382
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 383
    invoke-virtual {v2, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 385
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v21, v15

    const-string v15, ":\n"

    move-object/from16 v25, v12

    const-string v12, "        case "

    if-eqz v1, :cond_1b

    :try_start_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Class;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v24, v10

    .line 390
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v12, 0x0

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amazon/kindle/services/events/SubscriberConfig;

    if-eqz v15, :cond_18

    .line 400
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v1

    const-string v1, "            paramType = "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    .line 401
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->getClassReferenceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".asSubclass(IEvent.class);\n"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v15, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v15, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->isBlocking:Z

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", paramType, paramType, this"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v7

    const-string v7, "            handler = new EventHandler("

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "            handlers.add(handler);\n"

    .line 410
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "            if (\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\".equals(method)){\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                (("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")listener)."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lcom/amazon/kindle/services/events/SubscriberConfig;->paramType:Ljava/lang/Class;

    .line 422
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")event);\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "            }\n"

    .line 424
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x1

    goto :goto_12

    :cond_18
    move-object/from16 v27, v1

    move-object/from16 v28, v7

    :goto_12
    move-object/from16 v1, v27

    move-object/from16 v7, v28

    goto/16 :goto_11

    :cond_19
    move-object/from16 v28, v7

    if-eqz v12, :cond_1a

    const-string v0, "            return handlers;\n"

    .line 429
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 431
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    :cond_1a
    const-string v0, "        break;\n"

    .line 433
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v15, v21

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    move-object/from16 v0, v26

    move-object/from16 v7, v28

    goto/16 :goto_10

    :cond_1b
    move-object/from16 v28, v7

    move-object/from16 v24, v10

    move-object/from16 v1, v20

    .line 435
    :try_start_c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "            break;\n"

    .line 436
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 439
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 442
    invoke-virtual {v2, v14}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 443
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 444
    invoke-virtual {v2, v11}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-object/from16 v7, v19

    .line 445
    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-object/from16 v10, v23

    .line 446
    invoke-virtual {v2, v10}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-object/from16 v7, v22

    .line 447
    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 448
    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 449
    invoke-virtual {v2, v14}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 450
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 451
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-object/from16 v5, v18

    .line 452
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-object/from16 v5, v16

    .line 453
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 454
    invoke-virtual {v2, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 460
    :try_start_d
    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 461
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v8, v25

    .line 464
    :try_start_e
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v18, 0x0

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;

    if-eqz v10, :cond_1c

    move-object/from16 v16, v0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v5

    iget-boolean v5, v10, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->isBlocking:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;->paramType:Ljava/lang/Class;

    .line 477
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->getClassReferenceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;->topic:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", this"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v12

    const-string v12, "            handler = new TopicEventHandler("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "            handlers.add(handler);\n"

    .line 483
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "            if (\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\".equals(method)){\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "                (("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")listener)."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/amazon/kindle/services/events/BaseSubscriberConfig;->method:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/amazon/kindle/services/events/SubscriberTopicConfig;->paramType:Ljava/lang/Class;

    .line 495
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")event);\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "            }\n"

    .line 497
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v18, 0x1

    goto :goto_15

    :cond_1c
    move-object/from16 v16, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v12

    :goto_15
    move-object/from16 v0, v16

    move-object/from16 v5, v19

    move-object/from16 v12, v20

    goto/16 :goto_14

    :cond_1d
    move-object/from16 v16, v0

    move-object/from16 v20, v12

    if-eqz v18, :cond_1e

    const-string v0, "            return handlers;\n"

    .line 502
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 504
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    :cond_1e
    const-string v0, "        break;\n"

    .line 506
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v25, v8

    move-object/from16 v0, v16

    move-object/from16 v12, v20

    goto/16 :goto_13

    :cond_1f
    move-object/from16 v8, v25

    .line 508
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "            break;\n"

    .line 509
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 511
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 514
    invoke-virtual {v2, v14}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 515
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 516
    invoke-virtual {v2, v11}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 517
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 518
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 519
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "}\n"

    .line 520
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 521
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->compile()V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_16

    :catchall_3
    move-exception v0

    move-object/from16 v8, v25

    .line 511
    :goto_16
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 514
    invoke-virtual {v2, v14}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 515
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 516
    invoke-virtual {v2, v11}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 517
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 518
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 519
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v1, "}\n"

    .line 520
    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 521
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 522
    throw v0

    :catchall_4
    move-exception v0

    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_19

    :catchall_5
    move-exception v0

    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v1, v20

    goto :goto_19

    :catchall_6
    move-exception v0

    goto :goto_18

    :catchall_7
    move-exception v0

    goto :goto_17

    :catchall_8
    move-exception v0

    goto/16 :goto_a

    :catchall_9
    move-exception v0

    goto/16 :goto_9

    :catchall_a
    move-exception v0

    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v1, v20

    move-object/from16 v14, v21

    move-object/from16 v13, v22

    move-object/from16 v10, v23

    move-object/from16 v2, v24

    move-object/from16 v9, v27

    move-object/from16 v5, v28

    move-object/from16 v3, v30

    goto :goto_1a

    :catchall_b
    move-exception v0

    move-object v9, v6

    move-object v5, v7

    move-object v3, v12

    :goto_17
    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v1, v20

    move-object/from16 v14, v21

    move-object/from16 v13, v22

    move-object/from16 v10, v23

    move-object/from16 v2, v24

    goto :goto_1a

    :catchall_c
    move-exception v0

    move-object v2, v5

    move-object v9, v6

    move-object v5, v7

    move-object v3, v12

    :goto_18
    move-object/from16 v12, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v1, v20

    move-object/from16 v14, v21

    :goto_19
    move-object/from16 v13, v22

    move-object/from16 v10, v23

    .line 439
    :goto_1a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 442
    invoke-virtual {v2, v14}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 443
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 444
    invoke-virtual {v2, v11}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 445
    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 446
    invoke-virtual {v2, v10}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 447
    invoke-virtual {v2, v13}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 448
    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 449
    invoke-virtual {v2, v14}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 450
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 451
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 452
    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 453
    invoke-virtual {v2, v12}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 454
    invoke-virtual {v2, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 456
    throw v0
.end method

.method private static getClassReferenceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 582
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class.forName(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "void.class"

    return-object p0

    :pswitch_1
    const-string p0, "char.class"

    return-object p0

    :pswitch_2
    const-string p0, "double.class"

    return-object p0

    :pswitch_3
    const-string p0, "float.class"

    return-object p0

    :pswitch_4
    const-string p0, "long.class"

    return-object p0

    :pswitch_5
    const-string p0, "int.class"

    return-object p0

    :pswitch_6
    const-string p0, "short.class"

    return-object p0

    :pswitch_7
    const-string p0, "byte.class"

    return-object p0

    :pswitch_8
    const-string p0, "boolean.class"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 96
    :try_start_0
    new-instance v0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;-><init>([Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->findSubscribers()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 102
    throw p0

    :catch_1
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    throw p0
.end method

.method private parseOptions([Ljava/lang/String;)Z
    .locals 9

    .line 117
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_11

    aget-object v4, p1, v2

    const-string v5, "="

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 119
    array-length v6, v5

    const/4 v7, 0x2

    const-string v8, "Error: unrecognized option "

    if-eq v6, v7, :cond_0

    .line 120
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 123
    :cond_0
    aget-object v6, v5, v1

    const-string v7, "-s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    aget-object v6, v5, v1

    const-string v7, "--source"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_8

    .line 125
    :cond_1
    aget-object v6, v5, v1

    const-string v7, "-p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    aget-object v6, v5, v1

    const-string v7, "--package"

    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_7

    .line 128
    :cond_2
    aget-object v6, v5, v1

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    aget-object v6, v5, v1

    const-string v7, "--classname"

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_6

    .line 131
    :cond_3
    aget-object v6, v5, v1

    const-string v7, "-o"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    aget-object v6, v5, v1

    const-string v7, "--output"

    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_5

    .line 134
    :cond_4
    aget-object v6, v5, v1

    const-string v7, "-cp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    aget-object v6, v5, v1

    const-string v7, "--classpath"

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 137
    :cond_5
    aget-object v6, v5, v1

    const-string v7, "-sp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    aget-object v6, v5, v1

    const-string v7, "--scan-package"

    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 141
    :cond_6
    aget-object v6, v5, v1

    sget-object v7, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->USE_SCAN_PACKAGE_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    aget-object v6, v5, v1

    sget-object v7, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->USE_SCAN_PACKAGE_FULL_KEY:Ljava/lang/String;

    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 144
    :cond_7
    aget-object v6, v5, v1

    const-string v7, "-jh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    aget-object v6, v5, v1

    const-string v7, "--java-home"

    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    .line 148
    :cond_8
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 146
    :cond_9
    :goto_1
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->javaHome:Ljava/lang/String;

    goto :goto_9

    .line 143
    :cond_a
    :goto_2
    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->useScanPackage:Z

    goto :goto_9

    .line 139
    :cond_b
    :goto_3
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->scanPackage:Ljava/lang/String;

    goto :goto_9

    .line 136
    :cond_c
    :goto_4
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classpath:Ljava/lang/String;

    goto :goto_9

    .line 133
    :cond_d
    :goto_5
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classDir:Ljava/lang/String;

    goto :goto_9

    .line 130
    :cond_e
    :goto_6
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->classname:Ljava/lang/String;

    goto :goto_9

    .line 127
    :cond_f
    :goto_7
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->packageName:Ljava/lang/String;

    goto :goto_9

    .line 124
    :cond_10
    :goto_8
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/services/events/SubscriberFinderUtil;->genDir:Ljava/lang/String;

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    return v3
.end method
