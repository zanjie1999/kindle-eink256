.class public Lcom/amazon/identity/auth/device/ki;
.super Lcom/amazon/identity/kcpsdk/common/WebResponseParser;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/kcpsdk/common/WebResponseParser<",
        "Lcom/amazon/identity/auth/device/kh;",
        ">;"
    }
.end annotation


# instance fields
.field private final rG:Lcom/amazon/identity/auth/device/mh;

.field private rZ:Lcom/amazon/identity/auth/device/kh;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.amazon.identity.kcpsdk.auth.DeregisterDeviceResponseParser"

    .line 20
    invoke-direct {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/device/mh;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/mh;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ki;->rG:Lcom/amazon/identity/auth/device/mh;

    return-void
.end method


# virtual methods
.method public a([BJ)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ki;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/mh;->c([BJ)Z

    return-void
.end method

.method public synthetic hh()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ki;->hs()Lcom/amazon/identity/auth/device/kh;

    move-result-object v0

    return-object v0
.end method

.method public hi()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ki;->rG:Lcom/amazon/identity/auth/device/mh;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/mh;->iK()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b(Lcom/amazon/identity/kcpsdk/common/ParseError;)Z

    return-void

    .line 50
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/kh;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/kh;-><init>()V

    .line 51
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ls;->d(Lorg/w3c/dom/Document;)Lcom/amazon/identity/auth/device/lr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/kf;

    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;->DeregisterDeviceErrorTypeFailed:Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;

    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/kf;-><init>(Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/kh;->a(Lcom/amazon/identity/auth/device/kf;)V

    .line 60
    :cond_1
    iput-object v1, p0, Lcom/amazon/identity/auth/device/ki;->rZ:Lcom/amazon/identity/auth/device/kh;

    return-void
.end method

.method public hs()Lcom/amazon/identity/auth/device/kh;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ki;->rZ:Lcom/amazon/identity/auth/device/kh;

    return-object v0
.end method
