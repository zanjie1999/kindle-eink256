.class public final Lcom/amazon/identity/auth/device/api/MAPInit;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.MAPInit"

.field private static gw:Z = false

.field private static gx:Lcom/amazon/identity/auth/device/api/MAPInit;


# instance fields
.field private final gy:Landroid/content/Context;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPInit;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPInit;Lcom/amazon/identity/auth/device/ms;)V
    .locals 1

    .line 2198
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPInit$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/api/MAPInit$3;-><init>(Lcom/amazon/identity/auth/device/api/MAPInit;Lcom/amazon/identity/auth/device/ms;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic ao()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPInit;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/api/MAPInit;)V
    .locals 2

    .line 2172
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/platform/setting/PlatformSettings;->aV(Landroid/content/Context;)Lcom/amazon/identity/platform/setting/PlatformSettings;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPInit$2;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/api/MAPInit$2;-><init>(Lcom/amazon/identity/auth/device/api/MAPInit;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/platform/setting/PlatformSettings;->addListener(Ljava/lang/Runnable;)V

    .line 2181
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPInit;->bj()V

    return-void
.end method

.method private bj()V
    .locals 1

    .line 187
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cd()V

    .line 190
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->av(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/api/MAPInit;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPInit;->bj()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-class v0, Lcom/amazon/identity/auth/device/api/MAPInit;

    monitor-enter v0

    :try_start_0
    const-string v1, "context"

    .line 51
    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPInit;->gx:Lcom/amazon/identity/auth/device/api/MAPInit;

    if-eqz v1, :cond_0

    .line 55
    sget-object p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gx:Lcom/amazon/identity/auth/device/api/MAPInit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    .line 65
    new-instance p0, Lcom/amazon/identity/auth/device/api/MAPInit;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/api/MAPInit;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 68
    :cond_1
    :try_start_2
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPInit;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/api/MAPInit;-><init>(Landroid/content/Context;)V

    .line 69
    sput-object v1, Lcom/amazon/identity/auth/device/api/MAPInit;->gx:Lcom/amazon/identity/auth/device/api/MAPInit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isRunningInFunctionalTest()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/amazon/identity/auth/device/api/MAPInit;->gw:Z

    return v0
.end method

.method public static setIsRunningInFunctionalTest(Z)V
    .locals 0

    .line 148
    sput-boolean p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gw:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized initialize()V
    .locals 7
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 89
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 92
    :try_start_2
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->mInitialized:Z

    .line 1162
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->setPackageName(Ljava/lang/String;)V

    .line 1163
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPInit;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Initializing MAP (%s) for app %s. MAP release version: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1165
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gu()Lcom/amazon/identity/auth/device/hs;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    .line 1166
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    .line 1167
    invoke-static {}, Lcom/amazon/identity/auth/device/im;->gH()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1164
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    .line 2030
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/fj;->mz:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->P(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mn;->P(Landroid/content/Context;)V

    const-string v0, "MAPInit:initialize"

    .line 103
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    const-string v2, "NecessaryTime"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    const-string v3, "TotalTime"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 2136
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPInit;->gy:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/mp;->aT(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mp;

    move-result-object v2

    .line 2137
    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gR()Z

    move-result v3

    const-string v4, "MAPInitOnMainThread:"

    .line 2138
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/identity/auth/device/mp;->bA(Ljava/lang/String;)V

    .line 2139
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPInit;->TAG:Ljava/lang/String;

    const-string v4, "Running MAPInit on main thread: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v2, Lcom/amazon/identity/auth/device/api/MAPInit$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/identity/auth/device/api/MAPInit$1;-><init>(Lcom/amazon/identity/auth/device/api/MAPInit;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/ms;)V

    invoke-static {v2}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
