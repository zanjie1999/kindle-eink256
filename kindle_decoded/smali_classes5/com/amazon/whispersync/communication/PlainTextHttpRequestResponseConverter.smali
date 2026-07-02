.class public Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;
.super Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;
.source "PlainTextHttpRequestResponseConverter.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final DEFAULT_BYTE_BUFFER_CHAIN_MESSAGE_SIZE_CUT_OFF:I = 0x19000

.field private static final PROTOCOL_VERSION:Lorg/apache/http/ProtocolVersion;

.field private static final SINGLETON:Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mByteBufferChainMessageSizeLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.PlainTextHttpRequestResponseConverter"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 98
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const/4 v1, 0x1

    const-string v2, "HTTP"

    invoke-direct {v0, v2, v1, v1}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->PROTOCOL_VERSION:Lorg/apache/http/ProtocolVersion;

    .line 101
    new-instance v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->SINGLETON:Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const v0, 0x19000

    .line 108
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;-><init>()V

    .line 112
    iput p1, p0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->mByteBufferChainMessageSizeLimit:I

    return-void
.end method

.method private addEntityBodyToMessage(Lorg/apache/http/HttpMessage;Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "currentThread.getId"

    aput-object v3, v1, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "bodySize"

    aput-object v3, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "addEntityBodyToMessage"

    const-string v3, "beginning execution"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez p3, :cond_2

    .line 446
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v1, p3

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 448
    instance-of p2, p1, Lorg/apache/http/HttpResponse;

    if-eqz p2, :cond_0

    .line 449
    check-cast p1, Lorg/apache/http/HttpResponse;

    .line 450
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 451
    :cond_0
    instance-of p2, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz p2, :cond_1

    .line 452
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 453
    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 455
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    const-string p2, "Message contains bytes for an entity body, but this HttpMessage type does not support entity bodies."

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private addHeadersToMessage(Ljava/lang/StringBuilder;Lorg/apache/http/HttpMessage;Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;->getNextLine(Ljava/lang/StringBuilder;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 391
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 392
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;->isEndOfHeaders(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    const-string v3, ":"

    .line 393
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 394
    array-length v3, v0

    if-ne v3, v2, :cond_0

    .line 398
    aget-object v3, v0, v1

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-interface {p2, v3, v5}, Lorg/apache/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;->getNextLine(Ljava/lang/StringBuilder;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 402
    sget-object v5, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "currentThread.getId"

    aput-object v7, v6, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "name"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    aget-object v7, v0, v1

    aput-object v7, v6, v2

    const/4 v2, 0x4

    const-string/jumbo v7, "value"

    aput-object v7, v6, v2

    const/4 v2, 0x5

    aget-object v0, v0, v4

    aput-object v0, v6, v2

    const-string v0, "addHeadersToMessage"

    const-string v2, "finished adding headers"

    invoke-virtual {v5, v0, v2, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    .line 395
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    const-string p2, "Invalid message header format"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private createMessageFromEntityBody(Ljava/io/InputStream;)Lamazon/whispersync/communication/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 418
    :goto_0
    iget v3, p0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->mByteBufferChainMessageSizeLimit:I

    if-ge v2, v3, :cond_1

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 420
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 426
    :cond_0
    invoke-static {v3, v1, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/communication/ByteBufferChain;->append(Ljava/nio/ByteBuffer;)Lcom/amazon/whispersync/communication/ByteBufferChain;

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 432
    new-instance p1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;-><init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V

    goto :goto_2

    .line 434
    :cond_2
    new-instance v1, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getByteBufferList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;-><init>(Ljava/util/List;Ljava/io/InputStream;)V

    move-object p1, v1

    :goto_2
    return-object p1
.end method

.method private createRequestFromRequestLine(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "currentThread.getId"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "requestLine"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string v6, "createRequestFromRequestLine"

    const-string v7, "beginning execution"

    invoke-virtual {v0, v6, v7, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, " "

    .line 357
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 358
    array-length v0, p1

    if-ne v0, v2, :cond_5

    .line 361
    aget-object v0, p1, v5

    const-string v1, "HTTP/1.1"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    aget-object v0, p1, v3

    .line 366
    aget-object p1, p1, v4

    const-string v1, "PUT"

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "GET"

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "POST"

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "DELETE"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 377
    :cond_3
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported request method at this time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_4
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid protocol version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_5
    new-instance v0, Lcom/amazon/whispersync/communication/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message header format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createResponseFromResponseLine(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, " "

    .line 318
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 319
    array-length v1, p1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    .line 322
    aget-object v2, p1, v1

    const-string v3, "HTTP/1.1"

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 326
    aget-object p1, p1, v2

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Invalid reason code: "

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 332
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    sget-object v3, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "currentThread.getId"

    aput-object v6, v4, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v2

    const-string/jumbo v1, "reasonCode"

    aput-object v1, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "createResponseFromResponseLine"

    const-string v1, "finished parsing responseLine"

    invoke-virtual {v3, v0, v1, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    sget-object v1, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->PROTOCOL_VERSION:Lorg/apache/http/ProtocolVersion;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 342
    new-instance p1, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {p1, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    return-object p1

    .line 334
    :catch_0
    new-instance v0, Lcom/amazon/whispersync/communication/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/communication/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid protocol version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_2
    new-instance v0, Lcom/amazon/whispersync/communication/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message header format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;
    .locals 1

    .line 121
    sget-object v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->SINGLETON:Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;

    return-object v0
.end method

.method public static getInstance(I)Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;
    .locals 1

    .line 136
    new-instance v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;-><init>(I)V

    return-object v0
.end method

.method private validateMethod(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "PUT"

    .line 466
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DELETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "request missing method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .locals 2

    .line 481
    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    .line 484
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only HTTP/1.1 supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateUri(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 476
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "request missing uri"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public convertMessageToRequest(Lamazon/whispersync/communication/Message;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    .line 251
    invoke-interface {p1}, Lamazon/whispersync/communication/Message;->getPayload()Ljava/io/InputStream;

    move-result-object v0

    .line 252
    sget-object v1, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "currentThread.getId"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v5, "message.getPayloadSize"

    aput-object v5, v2, v3

    invoke-interface {p1}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const-string p1, "convertMessageToRequest"

    const-string v3, "beginning execution"

    invoke-virtual {v1, p1, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;->getNextLine(Ljava/lang/StringBuilder;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->createRequestFromRequestLine(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    .line 260
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 263
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->addHeadersToMessage(Ljava/lang/StringBuilder;Lorg/apache/http/HttpMessage;Ljava/io/InputStream;)V

    .line 266
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->addEntityBodyToMessage(Lorg/apache/http/HttpMessage;Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 268
    new-instance v0, Lcom/amazon/whispersync/communication/ProtocolException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public convertMessageToResponse(Lamazon/whispersync/communication/Message;)Lorg/apache/http/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    .line 225
    invoke-interface {p1}, Lamazon/whispersync/communication/Message;->getPayload()Ljava/io/InputStream;

    move-result-object v0

    .line 226
    sget-object v1, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "currentThread.getId"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v5, "message.getPayloadSize"

    aput-object v5, v2, v3

    invoke-interface {p1}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const-string p1, "convertMessageToResponse"

    const-string v3, "finished reading message payload"

    invoke-virtual {v1, p1, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;->getNextLine(Ljava/lang/StringBuilder;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->createResponseFromResponseLine(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 234
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 237
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->addHeadersToMessage(Ljava/lang/StringBuilder;Lorg/apache/http/HttpMessage;Ljava/io/InputStream;)V

    .line 240
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->addEntityBodyToMessage(Lorg/apache/http/HttpMessage;Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 242
    new-instance v0, Lcom/amazon/whispersync/communication/ProtocolException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public convertRequestToMessage(Lorg/apache/http/HttpRequest;)Lamazon/whispersync/communication/Message;
    .locals 13

    const-string v0, " "

    const-string v1, "\r\n"

    .line 146
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 154
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    .line 155
    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-direct {p0, v5}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->validateMethod(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 162
    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-direct {p0, v6}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->validateUri(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->validateProtocolVersion(Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "HTTP/1.1"

    .line 169
    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v4, "convertRequestToMessage"

    const-string v7, "finished reading method and uri"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "currentThread.getId"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const/4 v9, 0x2

    const-string v11, "method"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const/4 v5, 0x4

    const-string/jumbo v9, "uri"

    aput-object v9, v8, v5

    const/4 v5, 0x5

    aput-object v6, v8, v5

    invoke-virtual {v0, v4, v7, v8}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 181
    array-length v4, v0

    :goto_0
    if-ge v10, v4, :cond_0

    aget-object v5, v0, v10

    .line 182
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v6, ":"

    .line 183
    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 184
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    const/4 v0, 0x0

    .line 195
    instance-of v1, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_1

    .line 196
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 198
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 204
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 206
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->createMessageFromEntityBody(Ljava/io/InputStream;)Lamazon/whispersync/communication/Message;

    move-result-object v0

    .line 207
    invoke-interface {v0, p1}, Lamazon/whispersync/communication/Message;->prependPayload(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 210
    :cond_2
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed request object"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public convertResponseToMessage(Lorg/apache/http/HttpResponse;)Lamazon/whispersync/communication/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    const-string v0, "\r\n"

    .line 277
    sget-object v1, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "response.getStatusLine"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "convertResponseToMessage"

    const-string v5, "converting from HttpResponse to TComm message"

    invoke-virtual {v1, v3, v5, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    const-string v3, "HTTP/1.1"

    .line 283
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v3, " "

    .line 284
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 285
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 289
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 291
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v3, v4

    .line 292
    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v7, ":"

    .line 293
    invoke-virtual {v2, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 294
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 302
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    invoke-interface {p1, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 310
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed response object"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
