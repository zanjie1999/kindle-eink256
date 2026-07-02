.class public Lcom/amazon/whispersync/communication/HttpResponseValidator;
.super Ljava/lang/Object;
.source "HttpResponseValidator.java"


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.HttpResponseValidator"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/HttpResponseValidator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeStatusLine(Lorg/apache/http/HttpResponse;ILjava/lang/String;)V
    .locals 4

    .line 106
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 107
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 109
    sget-object p1, Lcom/amazon/whispersync/communication/HttpResponseValidator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "statusLine"

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object v1, p2, v2

    const/4 v2, 0x2

    const-string v3, "newStatusLine"

    aput-object v3, p2, v2

    const/4 v2, 0x3

    aput-object v0, p2, v2

    const-string v0, "changeStatusCode"

    const-string v2, "changing code and phrase"

    invoke-virtual {p1, v0, v2, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    return-void
.end method

.method public static validateContentLength(Lorg/apache/http/HttpResponse;)Z
    .locals 12

    .line 51
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 52
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x2

    const-string/jumbo v3, "validateContentLength"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_0

    .line 53
    sget-object p0, Lcom/amazon/whispersync/communication/HttpResponseValidator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "statusCode"

    aput-object v2, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "Ignoring non-2xx status code"

    invoke-virtual {p0, v3, v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    const-string v0, "Content-Length"

    .line 57
    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-nez v1, :cond_1

    .line 60
    sget-object p0, Lcom/amazon/whispersync/communication/HttpResponseValidator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "No Content-Length header"

    invoke-virtual {p0, v3, v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 65
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 66
    sget-object v1, Lcom/amazon/whispersync/communication/HttpResponseValidator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "headerContentLength"

    aput-object v9, v8, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v4

    const-string v10, "Got header content-length"

    invoke-virtual {v1, v3, v10, v8}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-gez v1, :cond_2

    return v4

    .line 74
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    const/16 v10, 0x1f4

    if-nez v8, :cond_3

    if-eqz v1, :cond_5

    .line 77
    sget-object v1, Lcom/amazon/whispersync/communication/HttpResponseValidator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "Unexpected null content"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "0"

    .line 79
    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Unexpected Null Content"

    .line 80
    invoke-static {p0, v10, v0}, Lcom/amazon/whispersync/communication/HttpResponseValidator;->changeStatusLine(Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    return v5

    .line 84
    :cond_3
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 85
    sget-object v1, Lcom/amazon/whispersync/communication/HttpResponseValidator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v11, "entityContentLength"

    aput-object v11, v2, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v2, v4

    const-string v11, "got entity content-length"

    invoke-virtual {v1, v3, v11, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    .line 88
    sget-object v1, Lcom/amazon/whispersync/communication/HttpResponseValidator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v4, "Length mismatch"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v8, v6

    if-gez v0, :cond_4

    const-string v0, "Response Truncated"

    goto :goto_0

    :cond_4
    const-string v0, "Content Length Mismatch"

    .line 92
    :goto_0
    invoke-static {p0, v10, v0}, Lcom/amazon/whispersync/communication/HttpResponseValidator;->changeStatusLine(Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    return v5

    :cond_5
    return v4
.end method
