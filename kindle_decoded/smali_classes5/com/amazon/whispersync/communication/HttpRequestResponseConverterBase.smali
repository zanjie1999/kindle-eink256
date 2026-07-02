.class public abstract Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;
.super Ljava/lang/Object;
.source "HttpRequestResponseConverterBase.java"

# interfaces
.implements Lcom/amazon/whispersync/communication/HttpRequestResponseConverter;


# static fields
.field protected static final COLON_DELIMITER:Ljava/lang/String; = ":"

.field public static final CONNECTION_TIMEOUT_MS_HEADER:Ljava/lang/String; = "x-amz-connection-timeout-ms"

.field protected static final CR:B = 0xdt

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final HTTP_1_1:Ljava/lang/String; = "HTTP/1.1"

.field protected static final HTTP_PROTOCOL:Ljava/lang/String; = "HTTP"

.field protected static final HTTP_PROTOCOL_MAJOR:I = 0x1

.field protected static final HTTP_PROTOCOL_MINOR:I = 0x1

.field protected static final LF:B = 0xat

.field public static final SOCKET_TIMEOUT_MS_HEADER:Ljava/lang/String; = "x-amz-socket-timeout-ms"

.field protected static final SPACE_DELIMITER:Ljava/lang/String; = " "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/communication/HttpRequestResponseConverterBase;->getNextLine(Ljava/lang/StringBuilder;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNextLine(Ljava/lang/StringBuilder;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation

    const-string v0, "Invalid message format: unexpected end of buffer"

    .line 59
    :try_start_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_0
    int-to-byte v2, v1

    const/16 v3, 0xa

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    const/16 v1, 0xd

    if-eq v2, v1, :cond_1

    if-eq v2, v3, :cond_0

    int-to-char v1, v2

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    const-string p2, "Invalid message format: LF not preceded by CR"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p2, v4, :cond_3

    int-to-byte p2, p2

    if-ne p2, v3, :cond_2

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_2
    :try_start_1
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    const-string p2, "Invalid message format: CR not followed by LF"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_3
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Lcom/amazon/whispersync/communication/ProtocolException;

    invoke-direct {p2, v0, p1}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method protected isEndOfHeaders(Ljava/lang/String;)Z
    .locals 0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
