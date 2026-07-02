.class public Lcom/amazon/whispersync/communication/authentication/DcpOAuthRequestSigner;
.super Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;


# static fields
.field protected static final AUTH_TYPE:Ljava/lang/String;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.DcpOAuthRequestSigner"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/DcpOAuthRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/DcpOAuthRequestSigner;->AUTH_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
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

    sget-object v5, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->EMPTY_BODY:[B

    sget-object v3, Lcom/amazon/whispersync/communication/authentication/DcpOAuthRequestSigner;->AUTH_TYPE:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Landroid/net/Uri;[BLamazon/whispersync/communication/authentication/RequestContext;)V

    return-void
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/authentication/DcpOAuthRequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "DcpOAuthRequestSigner does not support client-provided RequestContext"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
