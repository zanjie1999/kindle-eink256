.class public Lcom/amazon/kindle/krx/util/PluginCodeGen;
.super Ljava/lang/Object;
.source "PluginCodeGen.java"


# static fields
.field private static final BUILD_FULL_KEY:Ljava/lang/String; = "--build"

.field private static final BUILD_KEY:Ljava/lang/String; = "-b"

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

.field private static final PLUGIN_REGISTRY_TEMPLATE:Ljava/lang/String; = "PluginRegistry.xsl"

.field private static final SCAN_PACKAGE_FULL_KEY:Ljava/lang/String; = "--scan-package"

.field private static final SCAN_PACKAGE_KEY:Ljava/lang/String; = "-sp"

.field private static final TARGET_FULL_KEY:Ljava/lang/String; = "--target"

.field private static final TARGET_KEY:Ljava/lang/String; = "-t"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# instance fields
.field private build:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

.field private classDir:Ljava/lang/String;

.field private classname:Ljava/lang/String;

.field private classpath:Ljava/lang/String;

.field private genDir:Ljava/lang/String;

.field private javaHome:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private scanPackage:Ljava/lang/String;

.field private target:Lcom/amazon/kindle/krx/plugin/Plugin$Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target/gen"

    .line 97
    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->genDir:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.krx"

    .line 98
    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->packageName:Ljava/lang/String;

    const-string v0, "PluginRegistry"

    .line 99
    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classname:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->build:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    .line 101
    sget-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->target:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    const-string v0, "target/classes"

    .line 102
    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classDir:Ljava/lang/String;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classpath:Ljava/lang/String;

    const-string v0, "com.amazon"

    .line 104
    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->scanPackage:Ljava/lang/String;

    const-string v0, ""

    .line 105
    iput-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    return-void
.end method

.method private generateRolesString([Lcom/amazon/kindle/krx/plugin/Plugin$Role;Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;)Ljava/lang/StringBuffer;
    .locals 8

    .line 396
    const-class v0, Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 397
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    .line 400
    sget-object v5, Lcom/amazon/kindle/krx/util/PluginCodeGen$1;->$SwitchMap$com$amazon$kindle$krx$plugin$Plugin$Role:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    .line 411
    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->both:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    if-ne p2, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 407
    :cond_1
    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->child:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    if-eq p2, v5, :cond_3

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->both:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    if-ne p2, v5, :cond_0

    goto :goto_1

    .line 403
    :cond_2
    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    if-eq p2, v5, :cond_3

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->both:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    if-ne p2, v5, :cond_0

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 416
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "EnumSet.of("

    .line 421
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    if-eqz v2, :cond_6

    const-string v1, ", "

    .line 427
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const-string v1, "Role."

    .line 429
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string p2, ")"

    .line 432
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method private getPlugins(Lcom/amazon/kindle/krx/plugin/Plugin$Build;Lcom/amazon/kindle/krx/plugin/Plugin$Target;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/plugin/Plugin$Build;",
            "Lcom/amazon/kindle/krx/plugin/Plugin$Target;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/plugin/Plugin$Entry;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    new-instance v1, Lorg/reflections/Reflections;

    new-instance v2, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v2}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/reflections/scanners/Scanner;

    new-instance v4, Lorg/reflections/scanners/TypeAnnotationsScanner;

    invoke-direct {v4}, Lorg/reflections/scanners/TypeAnnotationsScanner;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 337
    invoke-virtual {v2, v3}, Lorg/reflections/util/ConfigurationBuilder;->setScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;

    .line 338
    invoke-static {}, Lorg/reflections/util/ClasspathHelper;->forJavaClassPath()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/reflections/util/ConfigurationBuilder;->setUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v1, v2}, Lorg/reflections/Reflections;-><init>(Lorg/reflections/Configuration;)V

    .line 339
    const-class v2, Lcom/amazon/kindle/krx/plugin/Plugin;

    .line 340
    invoke-virtual {v1, v2}, Lorg/reflections/Reflections;->getTypesAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 341
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 343
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found plugin class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    :try_start_0
    const-class v3, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 352
    const-class v3, Lcom/amazon/kindle/krx/plugin/Plugin;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/plugin/Plugin;

    .line 354
    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Build;->release:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    if-ne p1, v4, :cond_1

    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->build()Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Build;->debug:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    if-eq v4, v5, :cond_0

    :cond_1
    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Build;->debug:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    if-ne p1, v4, :cond_2

    .line 355
    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->build()Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Build;->release:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    if-eq v4, v5, :cond_0

    :cond_2
    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Target;->Tablet:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    if-ne p2, v4, :cond_3

    .line 356
    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->target()Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Target;->StandAlone:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    if-eq v4, v5, :cond_0

    :cond_3
    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Target;->StandAlone:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    if-ne p2, v4, :cond_4

    .line 357
    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->target()Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Target;->Tablet:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    if-ne v4, v5, :cond_4

    goto :goto_0

    .line 361
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "<plugin min=\""

    .line 362
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->minApi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" max=\""

    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->maxApi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" name=\""

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" roles=\""

    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->roles()[Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    move-result-object v5

    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->role()Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/amazon/kindle/krx/util/PluginCodeGen;->generateRolesString([Lcom/amazon/kindle/krx/plugin/Plugin$Role;Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v5, "\">"

    .line 368
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "</plugin>"

    .line 369
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->entry()Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    move-result-object v2

    .line 372
    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/Plugin;->scope()Lcom/amazon/kindle/krx/plugin/Plugin$Scope;

    move-result-object v3

    .line 373
    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    if-ne v2, v5, :cond_5

    sget-object v5, Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->content:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;

    if-ne v3, v5, :cond_5

    .line 374
    sget-object v2, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_after:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    .line 377
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-nez v3, :cond_6

    .line 380
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 348
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "annotated class does not implement IReaderPlugin interface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "failed parsing plugin annotation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/amazon/kindle/krx/util/PluginCodeGen;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/util/PluginCodeGen;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/krx/util/PluginCodeGen;->generate([Ljava/lang/String;)V

    return-void
.end method

.method private parseOptions([Ljava/lang/String;)Z
    .locals 9

    .line 230
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_16

    aget-object v4, p1, v2

    const-string v5, "="

    .line 232
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 233
    array-length v6, v5

    const/4 v7, 0x2

    const-string v8, "Error: unrecognized option "

    if-eq v6, v7, :cond_0

    .line 235
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 238
    :cond_0
    aget-object v6, v5, v1

    const-string v7, "-s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    aget-object v6, v5, v1

    const-string v7, "--source"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_9

    .line 241
    :cond_1
    aget-object v6, v5, v1

    const-string v7, "-p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    aget-object v6, v5, v1

    const-string v7, "--package"

    .line 242
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_8

    .line 245
    :cond_2
    aget-object v6, v5, v1

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    aget-object v6, v5, v1

    const-string v7, "--classname"

    .line 246
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_7

    .line 249
    :cond_3
    aget-object v6, v5, v1

    const-string v7, "-b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    aget-object v6, v5, v1

    const-string v7, "--build"

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_6

    .line 259
    :cond_4
    aget-object v6, v5, v1

    const-string v7, "-t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    aget-object v6, v5, v1

    const-string v7, "--target"

    .line 260
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_5

    .line 269
    :cond_5
    aget-object v6, v5, v1

    const-string v7, "-o"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    aget-object v6, v5, v1

    const-string v7, "--output"

    .line 270
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    .line 273
    :cond_6
    aget-object v6, v5, v1

    const-string v7, "-cp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    aget-object v6, v5, v1

    const-string v7, "--classpath"

    .line 274
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    .line 277
    :cond_7
    aget-object v6, v5, v1

    const-string v7, "-sp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    aget-object v6, v5, v1

    const-string v7, "--scan-package"

    .line 278
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 281
    :cond_8
    aget-object v6, v5, v1

    const-string v7, "-jh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    aget-object v6, v5, v1

    const-string v7, "--java-home"

    .line 282
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_1

    .line 287
    :cond_9
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    .line 284
    :cond_a
    :goto_1
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    goto :goto_a

    .line 280
    :cond_b
    :goto_2
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->scanPackage:Ljava/lang/String;

    goto :goto_a

    .line 276
    :cond_c
    :goto_3
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classpath:Ljava/lang/String;

    goto :goto_a

    .line 272
    :cond_d
    :goto_4
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classDir:Ljava/lang/String;

    goto :goto_a

    .line 262
    :cond_e
    :goto_5
    aget-object v4, v5, v3

    const-string v6, "tablet"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 264
    sget-object v3, Lcom/amazon/kindle/krx/plugin/Plugin$Target;->Tablet:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->target:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    goto :goto_a

    .line 265
    :cond_f
    aget-object v3, v5, v3

    const-string v4, "standalone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 267
    sget-object v3, Lcom/amazon/kindle/krx/plugin/Plugin$Target;->StandAlone:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->target:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    goto :goto_a

    .line 252
    :cond_10
    :goto_6
    aget-object v4, v5, v3

    const-string v6, "debug"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 254
    sget-object v3, Lcom/amazon/kindle/krx/plugin/Plugin$Build;->debug:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->build:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    goto :goto_a

    .line 255
    :cond_11
    aget-object v3, v5, v3

    const-string v4, "release"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 257
    sget-object v3, Lcom/amazon/kindle/krx/plugin/Plugin$Build;->release:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->build:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    goto :goto_a

    .line 248
    :cond_12
    :goto_7
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classname:Ljava/lang/String;

    goto :goto_a

    .line 244
    :cond_13
    :goto_8
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->packageName:Ljava/lang/String;

    goto :goto_a

    .line 240
    :cond_14
    :goto_9
    aget-object v3, v5, v3

    iput-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->genDir:Ljava/lang/String;

    :cond_15
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_16
    return v3
.end method

.method private static printUsage()V
    .locals 2

    .line 297
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nUsage: java -cp classpath com.amazon.kindle.krx.util.PluginCodeGen [options]"

    .line 298
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -s,--source=<arg>         folder for generated java source, default to src"

    .line 301
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -p,--package=<arg>        package name for the generated class, default to com.amazon.kindle.krx"

    .line 303
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -c,--class=<arg>          name for the generated class, default to PluginRegstry"

    .line 305
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -b,--build=<arg>          build flavor: debug|release"

    .line 307
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -t,--target=<arg>         build target: tablet|standalone"

    .line 309
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -o,--output=<arg>         folder for the compiled class, default to target/classes"

    .line 311
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -cp,--classpath=<arg>     classpath to compile: usually it is the compile classpath and target/classes"

    .line 313
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -sd,--scan-dir=<arg>      directory to scan the java classes with annotations from, default to target/classes"

    .line 315
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -sp,--scan-package=<arg>      package and sub-packages to scan the java classes with annotations in, default to com.amazon"

    .line 317
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 318
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -jh,--java-home=<arg>      path for JAVA_HOME environment variable"

    .line 319
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private transform(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 445
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 446
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    const-class v2, Lcom/amazon/kindle/krx/util/PluginCodeGen;

    const-string v3, "PluginRegistry.xsl"

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 450
    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 452
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 453
    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 454
    invoke-virtual {v0}, Ljavax/xml/transform/Transformer;->reset()V

    return-void
.end method


# virtual methods
.method public generate([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/util/PluginCodeGen;->parseOptions([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    invoke-static {}, Lcom/amazon/kindle/krx/util/PluginCodeGen;->printUsage()V

    goto/16 :goto_5

    .line 132
    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v0, "UTF8"

    const-string v1, "<plugins>"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "<time>"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 135
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "</time>"

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "<classname>"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 138
    iget-object v1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "</classname>"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "<packageName>"

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 141
    iget-object v1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "</packageName>"

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    iget-object v1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->build:Lcom/amazon/kindle/krx/plugin/Plugin$Build;

    iget-object v2, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->target:Lcom/amazon/kindle/krx/plugin/Plugin$Target;

    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/krx/util/PluginCodeGen;->getPlugins(Lcom/amazon/kindle/krx/plugin/Plugin$Build;Lcom/amazon/kindle/krx/plugin/Plugin$Target;)Ljava/util/Map;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    const-string v4, "<entry entry=\""

    .line 148
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 149
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v3, "\">"

    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 151
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    :cond_1
    const-string v2, "</entry>"

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_2
    const-string v1, "</plugins>"

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->genDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->packageName:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 164
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create directory structure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classname:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/krx/util/PluginCodeGen;->transform(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classpath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 176
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    check-cast v2, Ljava/net/URLClassLoader;

    invoke-virtual {v2}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v2

    .line 177
    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 180
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "path.separator"

    .line 181
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const-string v2, "java.class.path"

    .line 183
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classpath:Ljava/lang/String;

    .line 189
    :cond_7
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java home: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    const-string v2, ""

    if-eq p1, v2, :cond_9

    const-string v2, "bin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    .line 198
    iget-object p1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    const-string v3, "jre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_8

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/../bin/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    goto :goto_4

    .line 203
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bin/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    .line 208
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/ProcessBuilder;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->javaHome:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "javac"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "-source"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, "1.7"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v4, "-target"

    aput-object v4, v2, v1

    const/4 v1, 0x4

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "-classpath"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classpath:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "-d"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/amazon/kindle/krx/util/PluginCodeGen;->classDir:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x9

    aput-object v0, v2, v1

    invoke-direct {p1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p1

    .line 212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p1, :cond_a

    :goto_5
    return-void

    .line 215
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "generated code failed compilation, "

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
