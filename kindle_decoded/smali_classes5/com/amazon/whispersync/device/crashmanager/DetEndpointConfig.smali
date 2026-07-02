.class Lcom/amazon/whispersync/device/crashmanager/DetEndpointConfig;
.super Ljava/lang/Object;
.source "DetEndpointConfig.java"


# static fields
.field private static final DET_BETA_URN:Ljava/lang/String; = "https://det-ta-g7g.vipinteg.amazon.com:443"

.field private static final DET_PROD_URN:Ljava/lang/String; = "https://det-ta-g7g.amazon.com:443"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getServiceEndpoint(Lcom/amazon/whispersync/device/crashmanager/Domain;)Lamazon/whispersync/communication/identity/EndpointIdentity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DetEndpointConfig$1;->$SwitchMap$com$amazon$device$crashmanager$Domain:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "https://det-ta-g7g.vipinteg.amazon.com:443"

    .line 19
    invoke-static {p0}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createFromUrn(Ljava/lang/String;)Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "https://det-ta-g7g.amazon.com:443"

    .line 16
    invoke-static {p0}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createFromUrn(Ljava/lang/String;)Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object p0

    return-object p0
.end method
