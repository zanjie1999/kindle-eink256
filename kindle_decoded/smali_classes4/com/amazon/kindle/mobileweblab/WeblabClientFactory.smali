.class public Lcom/amazon/kindle/mobileweblab/WeblabClientFactory;
.super Ljava/lang/Object;
.source "WeblabClientFactory.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "KindleApp"

.field private static final MAJOR_VERSION_REGEX:Ljava/lang/String; = "^(\\d+)(\\.)(\\d+)"

.field private static final TAG:Ljava/lang/String; = "WeblabClientFactory"

.field private static final WEBLAB_DIRECTORY:Ljava/lang/String; = "weblab"

.field private static final WEBLAB_IDENTIFIER:Ljava/lang/String; = "KindleForAndroid"


# direct methods
.method private static generateClientAttributes(Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->FIRE_OS:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->ANDROID:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    :goto_0
    move-object v5, v0

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 53
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    .line 54
    invoke-static {p1}, Lcom/amazon/kindle/mobileweblab/WeblabClientFactory;->getMajorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "KindleForAndroid"

    const-string v3, "KindleApp"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;Ljava/lang/String;)V

    .line 55
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;->addWeblab(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static generateRuntimeConfiguration(Landroid/content/Context;)Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;
    .locals 2

    const-string v0, "weblab"

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 64
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;-><init>(Ljava/lang/String;)V

    .line 65
    sget-object p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->PROD:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v0, p0}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->setEndpoint(Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)V

    return-object v0
.end method

.method public static getClient(Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblabClient;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/weblab/mobile/IMobileWeblabClient;"
        }
    .end annotation

    .line 37
    invoke-static {p2, p3}, Lcom/amazon/kindle/mobileweblab/WeblabClientFactory;->generateClientAttributes(Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lcom/amazon/kindle/mobileweblab/WeblabClientFactory;->generateRuntimeConfiguration(Landroid/content/Context;)Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;

    move-result-object v1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getMarketplaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getDirectedId()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 41
    invoke-static/range {v0 .. v5}, Lcom/amazon/weblab/mobile/MobileWeblabClientFactory;->createMobileWeblabClient(Lcom/amazon/weblab/mobile/settings/MobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WeblabClientFactory"

    const-string p2, "Failed to initialize weblab client"

    .line 44
    invoke-static {p1, p2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getMajorVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "^(\\d+)(\\.)(\\d+)"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 77
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Error parsing version %s using regex %s"

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeblabClientFactory"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
