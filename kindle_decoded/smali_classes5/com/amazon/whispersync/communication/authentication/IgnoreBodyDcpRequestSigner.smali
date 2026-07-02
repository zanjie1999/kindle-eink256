.class public Lcom/amazon/whispersync/communication/authentication/IgnoreBodyDcpRequestSigner;
.super Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.IgnoreBodyDcpRequestSigner"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/IgnoreBodyDcpRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected extractBody(Lorg/apache/http/client/methods/HttpRequestBase;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;
        }
    .end annotation

    sget-object p1, Lcom/amazon/whispersync/communication/authentication/AbstractDcpRequestSigner;->EMPTY_BODY:[B

    return-object p1
.end method
