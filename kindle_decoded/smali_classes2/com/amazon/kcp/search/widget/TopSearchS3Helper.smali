.class public Lcom/amazon/kcp/search/widget/TopSearchS3Helper;
.super Ljava/lang/Object;
.source "TopSearchS3Helper.java"


# static fields
.field private static final CN_RESOURCE_NAME:Ljava/lang/String; = "kfc_top_search_link"

.field private static final RESOURCE_SET_NAME:Ljava/lang/String; = "TopSearchLink"

.field private static final S3_URL_KEY:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String;

.field private static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppExpanResourceSet()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;
    .locals 3

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const-string v2, "TopSearchLink"

    .line 94
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->getResourceSet(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;->getResourceSet()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static getS3Url()Ljava/lang/String;
    .locals 4

    .line 51
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 54
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 57
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->getAppExpanResourceSet()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 59
    sget-object v2, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->isNewVersionResourceSetRetrieved()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "kfc_top_search_link"

    .line 60
    invoke-static {v0, v2}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->updateS3Url(Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->url:Ljava/lang/String;

    .line 61
    const-class v2, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getVersion()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->saveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 65
    :cond_3
    sget-object v0, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static isNewVersionResourceSetRetrieved()Z
    .locals 4

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->getAppExpanResourceSet()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    const-class v2, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->retrieveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource set version is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current version is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    invoke-interface {v1}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getVersion()I

    move-result v1

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static parseJsonStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "url"

    .line 131
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    sget-object v0, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseJsonStr fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static readJsonFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x80

    new-array v1, v1, [C

    .line 117
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo p0, "utf-8"

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result p0

    if-lez p0, :cond_0

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 117
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 121
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 122
    sget-object v1, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getS3Url read file error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static updateS3Url(Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getResourceByName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 105
    invoke-interface {p0}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getFile()Ljava/io/File;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->readJsonFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateS3Url jsonStr: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->parseJsonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
