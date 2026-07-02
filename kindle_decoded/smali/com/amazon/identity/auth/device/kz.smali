.class public Lcom/amazon/identity/auth/device/kz;
.super Lcom/amazon/identity/auth/device/ko;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/ko<",
        "Lcom/amazon/identity/auth/device/ky;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/identity/auth/device/ku;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ku;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/kz;-><init>(Lcom/amazon/identity/auth/device/kv;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/kv;)V
    .locals 1

    const-string v0, "com.amazon.identity.kcpsdk.auth.RegisterDeviceResponseJsonParser"

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/ko;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/kw;)V

    return-void
.end method
