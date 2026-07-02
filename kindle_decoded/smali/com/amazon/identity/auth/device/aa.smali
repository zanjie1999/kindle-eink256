.class public final Lcom/amazon/identity/auth/device/aa;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.aa"

.field private static ck:Lcom/amazon/identity/auth/device/z;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Lcom/amazon/identity/auth/device/z;
    .locals 3

    const-class v0, Lcom/amazon/identity/auth/device/aa;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/aa;->ck:Lcom/amazon/identity/auth/device/z;

    if-eqz v1, :cond_0

    .line 25
    sget-object p0, Lcom/amazon/identity/auth/device/aa;->ck:Lcom/amazon/identity/auth/device/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 28
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    const-string/jumbo v1, "sso_platform"

    .line 30
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/ds;

    .line 32
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ds;->dq()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    sget-object v1, Lcom/amazon/identity/auth/device/aa;->TAG:Ljava/lang/String;

    const-string v2, "Returning Profile multiple profile settings"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/amazon/identity/auth/device/ad;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/ad;-><init>(Lcom/amazon/identity/auth/device/ed;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 39
    :cond_1
    :try_start_2
    sget-object v1, Lcom/amazon/identity/auth/device/aa;->TAG:Ljava/lang/String;

    const-string v2, "Returning Default multiple profile settings"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/amazon/identity/auth/device/v;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/v;-><init>(Lcom/amazon/identity/auth/device/ed;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
