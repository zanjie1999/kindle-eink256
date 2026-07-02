.class public abstract Lcom/amazon/identity/auth/device/ld;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ld"


# instance fields
.field protected bi:Ljava/lang/String;

.field protected rD:Lcom/amazon/identity/auth/device/ma;

.field protected sj:Ljava/lang/String;

.field protected so:Lcom/amazon/identity/auth/device/kp;

.field protected tJ:Ljava/lang/String;

.field protected tK:Ljava/lang/String;

.field protected tL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/amazon/identity/auth/device/kp;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ld;->so:Lcom/amazon/identity/auth/device/kp;

    return-void
.end method

.method public final dR(Ljava/lang/String;)Z
    .locals 1

    .line 32
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->eE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    sget-object p1, Lcom/amazon/identity/auth/device/ld;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDeviceType: deviceType was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public final dS(Ljava/lang/String;)Z
    .locals 1

    .line 49
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->eF(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget-object p1, Lcom/amazon/identity/auth/device/ld;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDeviceSerialNumber: device serial number was invalid. Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/amazon/identity/auth/device/kr;->dM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ld;->tJ:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public e(Lcom/amazon/identity/auth/device/ej;)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/amazon/identity/auth/device/kp;->hy()Lcom/amazon/identity/auth/device/kp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/kp;->hx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/amazon/identity/auth/device/ld;->TAG:Ljava/lang/String;

    const-string v2, "TrustZone signer is available on this device."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ld;->a(Lcom/amazon/identity/auth/device/kp;)V

    if-eqz p1, :cond_1

    const-string v0, "TrustZoneAvailable"

    .line 104
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/ld;->TAG:Ljava/lang/String;

    const-string v0, "TrustZone signer is not available on this device."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final eu(Ljava/lang/String;)Z
    .locals 1

    .line 67
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object p1, Lcom/amazon/identity/auth/device/ld;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public final ev(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ld;->tL:Ljava/lang/String;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ld;->rD:Lcom/amazon/identity/auth/device/ma;

    return-void
.end method

.method protected hL()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/amazon/identity/auth/device/js;->hc()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public abstract hq()Lcom/amazon/identity/auth/device/ma;
.end method

.method public ic()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/amazon/identity/auth/device/kp;->hy()Lcom/amazon/identity/auth/device/kp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ld;->a(Lcom/amazon/identity/auth/device/kp;)V

    return-void
.end method

.method protected id()Ljava/lang/String;
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->so:Lcom/amazon/identity/auth/device/kp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ld;->bi:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->sj:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ld;->tK:Ljava/lang/String;

    .line 134
    invoke-static {v0, v2, v3}, Lcom/amazon/identity/auth/device/js;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ld;->hL()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ld;->tL:Ljava/lang/String;

    .line 134
    invoke-static {v0, v2, v3}, Lcom/amazon/identity/auth/device/js;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ld;->so:Lcom/amazon/identity/auth/device/kp;

    const-string v3, "drvV1"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/identity/auth/device/kp;->d(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 142
    sget-object v2, Lcom/amazon/identity/auth/device/ld;->TAG:Ljava/lang/String;

    const-string v3, "Failed to sign JWT"

    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
