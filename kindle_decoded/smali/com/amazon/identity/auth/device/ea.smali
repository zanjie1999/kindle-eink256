.class public abstract Lcom/amazon/identity/auth/device/ea;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static ld:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ea;->ld:Ljava/lang/String;

    .line 15
    const-class v0, Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ea;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cq()J
.end method

.method public abstract cr()Ljava/lang/String;
.end method

.method public abstract cs()Z
.end method

.method public abstract ct()Ljava/lang/String;
.end method

.method public dQ()Lcom/amazon/identity/auth/device/lz;
    .locals 3

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/lz;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ea;->cq()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/lz;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dR()Ljava/lang/String;
    .locals 4

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 53
    sget-object v2, Lcom/amazon/identity/auth/device/ea;->TAG:Ljava/lang/String;

    const-string v3, "Exception when trying to get DSN"

    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 55
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v0, Lcom/amazon/identity/auth/device/ea;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get DSN, use randomly generated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/identity/auth/device/ea;->ld:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/amazon/identity/auth/device/ea;->ld:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract getDeviceSerialNumber()Ljava/lang/String;
.end method

.method public abstract getDeviceType()Ljava/lang/String;
.end method
