.class public Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;
.super Ljava/lang/Object;
.source "DictionaryURlWebRequestResponseHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;


# static fields
.field private static DICTIONARY_URL_DOWNLOAD_EVENT:Ljava/lang/String; = "WordWiseDictionaryUrlDownload"

.field private static DICTIONARY_URL_DOWNLOAD_SUCCESS_RATE:Ljava/lang/String; = "WordWiseDictionaryUrlDownloadSuccessRate"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.wordwise.download.DictionaryURlWebRequestResponseHandler"


# instance fields
.field private final dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

.field private isChinaUser:Z

.field message:Ljava/lang/String;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field url:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;ZLcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->url:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->version:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->message:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 47
    iput-boolean p2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->isChinaUser:Z

    .line 48
    iput-object p3, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    return-void
.end method

.method private extractJSONObject(Ljava/io/BufferedReader;)Lorg/json/JSONObject;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBufferedReader(Ljava/io/InputStream;)Ljava/io/BufferedReader;
    .locals 3

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 53
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 10

    .line 59
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "0.0"

    if-eqz v0, :cond_0

    .line 61
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getVersionKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurrentVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", newVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->version:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    const-string v1, "DictionaryOutdated"

    invoke-static {v0, v1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportActionByDictionaryType(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;Ljava/lang/String;)V

    .line 73
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->message:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    new-instance v9, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 78
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->isChinaUser:Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v7, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->version:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/wordwise/download/DictionaryDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V

    .line 77
    invoke-interface {v0, v9}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse version number"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WW Dict URL download: Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " message: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->message:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isCN "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->isChinaUser:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " url: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->version:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 91
    sget-object v0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->DICTIONARY_URL_DOWNLOAD_SUCCESS_RATE:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->dictionaryType:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    sget-object v0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->DICTIONARY_URL_DOWNLOAD_EVENT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportEventToPmetByDictionaryType(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 4

    .line 102
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->getBufferedReader(Ljava/io/InputStream;)Ljava/io/BufferedReader;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->extractJSONObject(Ljava/io/BufferedReader;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "message"

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->message:Ljava/lang/String;

    const-string/jumbo v0, "url"

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->url:Ljava/lang/String;

    const-string/jumbo v0, "version"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;->version:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusCode(I)V
    .locals 0

    return-void
.end method
