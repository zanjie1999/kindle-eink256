.class public Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;
.super Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;


# static fields
.field protected static final AUTH_TYPE:Ljava/lang/String;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.DcpRequestSigner"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;->AUTH_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected extractBody(Lorg/apache/http/client/methods/HttpRequestBase;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;
        }
    .end annotation

    const-string v0, "Error consuming remainder of entity content"

    const-string v1, "extractBody"

    instance-of v2, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    move-object v5, p1

    check-cast v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v3

    if-nez v3, :cond_0

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {p1, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v3, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v5

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    sget-object v5, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v5, v1, v0, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_1
    :try_start_3
    new-instance v5, Lamazon/whispersync/communication/authentication/SigningException;

    const-string v6, "Error getting content from http entity"

    invoke-direct {v5, v6, p1}, Lamazon/whispersync/communication/authentication/SigningException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v3, :cond_2

    :try_start_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    sget-object v5, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {v5, v1, v0, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    throw p1

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    sget-object v3, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->EMPTY_BODY:[B

    :goto_5
    return-object v3
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V

    return-void
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->validateRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;->extractBody(Lorg/apache/http/client/methods/HttpRequestBase;)[B

    move-result-object v5

    sget-object v3, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;->AUTH_TYPE:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Landroid/net/Uri;[BLamazon/whispersync/communication/authentication/RequestContext;)V

    return-void
.end method
