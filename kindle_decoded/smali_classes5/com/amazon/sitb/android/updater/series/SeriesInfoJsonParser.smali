.class public Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;
.super Ljava/lang/Object;
.source "SeriesInfoJsonParser.java"


# static fields
.field private static final NO_ERROR:Ljava/lang/String; = "ERR000"

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private clockService:Lcom/amazon/sitb/android/services/ClockService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/services/ClockService;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    return-void
.end method

.method private extractJSONObject(Ljava/io/BufferedReader;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private getBufferedReader(Ljava/io/InputStream;Z)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 79
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p2

    .line 81
    :cond_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p2
.end method

.method private isValidErrorCode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ERR000"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;ZJ)Lcom/amazon/sitb/android/SeriesInfo;
    .locals 8

    const-string v0, "nextBook"

    .line 39
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;->getBufferedReader(Ljava/io/InputStream;Z)Ljava/io/BufferedReader;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;->extractJSONObject(Ljava/io/BufferedReader;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, -0x1

    const-string v1, "error"

    .line 45
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {p0, v1}, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;->isValidErrorCode(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "asin"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string/jumbo v1, "titleName"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "showAtPercentRead"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    move v3, p1

    move-object v1, v2

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v1, v2

    const/4 v3, -0x1

    .line 53
    :goto_0
    new-instance p1, Lcom/amazon/sitb/android/SeriesInfo;

    iget-object p2, p0, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/services/ClockService;->now()J

    move-result-wide v4

    move-object v0, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/sitb/android/SeriesInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    sget-object p2, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p3, "Could not parse JSON response"

    invoke-interface {p2, p3, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
