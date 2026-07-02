.class public Lcom/amazon/whispersync/client/metrics/transport/StaticCredentialRequestSigner;
.super Ljava/lang/Object;
.source "StaticCredentialRequestSigner.java"

# interfaces
.implements Lamazon/whispersync/communication/authentication/RequestSigner;


# instance fields
.field private final mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/device/utils/DeviceUtil;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/StaticCredentialRequestSigner;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceUtil cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/client/metrics/transport/StaticCredentialRequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V

    return-void
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    .line 40
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/StaticCredentialRequestSigner;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {p2}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchStaticCredential()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "x-credential-token"

    .line 42
    invoke-virtual {p1, v0, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Lamazon/whispersync/communication/MissingCredentialsException;

    const-string p2, "Static Credential is unavailable."

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/MissingCredentialsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
