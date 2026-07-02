.class public Lcom/amazon/whispersync/device/utils/DetUtil;
.super Ljava/lang/Object;
.source "DetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/device/utils/DetUtil$ReplaceValue;,
        Lcom/amazon/whispersync/device/utils/DetUtil$ReplaceHeader;,
        Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;,
        Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;,
        Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;,
        Lcom/amazon/whispersync/device/utils/DetUtil$PlainBodyWriter;,
        Lcom/amazon/whispersync/device/utils/DetUtil$BodyWriter;,
        Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;
    }
.end annotation


# static fields
.field private static final DET_UPLOAD_TIMEOUT_MILLIS:I = 0x7530

.field private static final HEADER_VALUE_REGEX:Ljava/util/regex/Pattern;

.field private static final sDetDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^(.+?): (.+)$"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/utils/DetUtil;->HEADER_VALUE_REGEX:Ljava/util/regex/Pattern;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyMMdd:HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/whispersync/device/utils/DetUtil;->sDetDateFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 58
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventsSectionHeader(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\n[Events]\n"

    .line 325
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public addMetadataSectionHeader(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[Metadata]\n"

    .line 301
    invoke-virtual {p5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "DeviceType"

    .line 302
    invoke-interface {p1, v0, p2, p5}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    const-string p2, "DeviceSerialNumber"

    .line 303
    invoke-interface {p1, p2, p3, p5}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 304
    sget-object p2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string p3, "SystemVersion"

    invoke-interface {p1, p3, p2, p5}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 305
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p3, "BuildType"

    invoke-interface {p1, p3, p2, p5}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 306
    sget-object p2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string p3, "BuildTags"

    invoke-interface {p1, p3, p2, p5}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    if-eqz p4, :cond_2

    .line 308
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p4, p3, p5}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_0

    .line 310
    :cond_1
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Extra info key or value set to null. Skipping. Key :"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Value :"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public compressMessage([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    int-to-float v1, v1

    const v2, 0x3e4ccccc    # 0.19999999f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 265
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 267
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 271
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 269
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw p1
.end method

.method public createDefaultHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "/DeviceEventProxy/DETLogServlet?key=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string p1, "expect"

    const-string v1, ""

    .line 241
    invoke-virtual {v0, p1, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "X-Anonymous-Tag"

    .line 246
    invoke-virtual {v0, p1, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "X-DeviceType"

    .line 247
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string p2, "X-DeviceFirmwareVersion"

    invoke-virtual {v0, p2, p1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDetMfbsHeader(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\nFiles: messages.0"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n------------------"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nMFBS/1.0 1"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nContent-Type: "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nContent-Encoding: "

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GZIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nContent-Length: "

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nContent-Name: Content"

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDate(J)Ljava/lang/String;
    .locals 2

    .line 399
    sget-object v0, Lcom/amazon/whispersync/device/utils/DetUtil;->sDetDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postFileToDet(Lorg/apache/http/client/methods/HttpPost;Lamazon/whispersync/communication/srr/SrrManager;Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/authentication/RequestContext;)Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lamazon/whispersync/communication/TimeoutException;,
            Lamazon/whispersync/communication/RequestFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 348
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Posting file to DET of size %d."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    new-instance v0, Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-direct {v0}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-virtual {v0, p3}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setEndpointIdentity(Lamazon/whispersync/communication/identity/EndpointIdentity;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    const/16 p1, 0x7530

    invoke-virtual {v0, p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setTimeout(I)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    sget-object p1, Lamazon/whispersync/communication/connection/CompressionOption;->REQUIRED:Lamazon/whispersync/communication/connection/CompressionOption;

    invoke-virtual {v0, p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setCompressionOption(Lamazon/whispersync/communication/connection/CompressionOption;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-virtual {v0, p4}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setRequestContext(Lamazon/whispersync/communication/authentication/RequestContext;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-virtual {v0}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->build()Lamazon/whispersync/communication/srr/SrrRequest;

    move-result-object p1

    .line 360
    invoke-interface {p2, p1}, Lamazon/whispersync/communication/srr/SrrManager;->makeRequestSync(Lamazon/whispersync/communication/srr/SrrRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 364
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 367
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string/jumbo p3, "postFileToDet"

    const-string p4, "IO exception while trying to close the DET response."

    .line 370
    invoke-static {p3, p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 375
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 p3, 0xc8

    if-lt p2, p3, :cond_2

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 p3, 0x12c

    if-ge p2, p3, :cond_2

    .line 377
    sget-object p1, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->SUCCESS:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    return-object p1

    .line 379
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed with error code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 p3, 0x190

    const/16 p4, 0x1f4

    if-lt p2, p3, :cond_3

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    if-ge p2, p4, :cond_3

    .line 381
    sget-object p1, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->CLIENT_ERROR:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    return-object p1

    .line 382
    :cond_3
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    if-lt p2, p4, :cond_4

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x258

    if-ge p1, p2, :cond_4

    .line 383
    sget-object p1, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->SERVER_ERROR:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    return-object p1

    .line 390
    :cond_4
    sget-object p1, Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;->CLIENT_ERROR:Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    return-object p1

    .line 345
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint identity must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SRR Manager must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Http Post must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 220
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/device/utils/DetUtil;->HEADER_VALUE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 224
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-interface {p3, v1, v0, p2}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_0

    :cond_1
    return-void
.end method
