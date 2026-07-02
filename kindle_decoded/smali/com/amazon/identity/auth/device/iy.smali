.class public final Lcom/amazon/identity/auth/device/iy;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "iy"

.field private static rl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized aI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/iy;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->ba(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->al(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 36
    sget-object v1, Lcom/amazon/identity/auth/device/iy;->TAG:Ljava/lang/String;

    const-string v2, "MAP Client side on FireOS 7+ calls IPC to get the DSN."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/amazon/identity/auth/device/iy;->rl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    sget-object p0, Lcom/amazon/identity/auth/device/iy;->rl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 41
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ce;->t(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ce;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "Device Serial Number"

    .line 44
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/ce;->aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 47
    iget-object p0, p0, Lcom/amazon/identity/auth/device/cf;->value:Ljava/lang/String;

    .line 48
    sput-object p0, Lcom/amazon/identity/auth/device/iy;->rl:Ljava/lang/String;
    :try_end_2
    .catch Lcom/amazon/identity/auth/device/api/DeviceDataStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 52
    :cond_1
    :try_start_3
    sget-object p0, Lcom/amazon/identity/auth/device/iy;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get device DSN from IPC"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/amazon/identity/auth/device/api/DeviceDataStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    :try_start_4
    sget-object v1, Lcom/amazon/identity/auth/device/iy;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get device DSN"

    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/amazon/identity/auth/device/iy;->getSerial()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 68
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSerial()Ljava/lang/String;
    .locals 4

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 79
    :try_start_0
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/amazon/identity/auth/device/iy;->TAG:Ljava/lang/String;

    const-string v2, "Caught a general exception"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :catch_1
    sget-object v0, Lcom/amazon/identity/auth/device/iy;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get Build.getSerial(). No READ_PHONE_STATE or READ_PRIVILEGED_PHONE_STATE permission granted"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 93
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 95
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    :cond_2
    sget-object v1, Lcom/amazon/identity/auth/device/iy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot get build serial, return "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
