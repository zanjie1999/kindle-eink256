.class public final Lcom/amazon/identity/auth/device/mt;
.super Lcom/amazon/identity/auth/device/mp;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/mt$a;
    }
.end annotation


# static fields
.field private static vp:Lcom/amazon/identity/auth/device/mt;


# instance fields
.field private mContext:Landroid/content/Context;

.field private vq:Lcom/amazon/identity/auth/device/mt$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/mp;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazon/identity/auth/device/mt;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/mt$a;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/mt$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/mt;->vq:Lcom/amazon/identity/auth/device/mt$a;

    .line 1028
    iget-object p1, v0, Lcom/amazon/identity/auth/device/mt$a;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    const-string v0, "MAPAPP_DCMThirdPartyPeriodic_SUPPORTED"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 53
    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    const-string p1, "ThirdPartyPeriodicMetricsCollector"

    const-string v0, "Successfully create ThirdPartyPeriodicMetricsCollector"

    .line 54
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized aU(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mt;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/mt;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/mt;->vp:Lcom/amazon/identity/auth/device/mt;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/amazon/identity/auth/device/mt;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/mt;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/mt;->vp:Lcom/amazon/identity/auth/device/mt;

    .line 72
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/mt;->vp:Lcom/amazon/identity/auth/device/mt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public bA(Ljava/lang/String;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mn;->aQ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/mt;->vq:Lcom/amazon/identity/auth/device/mt$a;

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, v0, Lcom/amazon/identity/auth/device/mt$a;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    if-eqz v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 83
    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public eL(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mn;->aQ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/mt;->vq:Lcom/amazon/identity/auth/device/mt$a;

    if-eqz v0, :cond_0

    .line 4028
    iget-object v0, v0, Lcom/amazon/identity/auth/device/mt$a;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Lcom/amazon/identity/auth/device/mv;

    invoke-direct {v1, v0, p1}, Lcom/amazon/identity/auth/device/mv;-><init>(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Ljava/lang/String;)V

    return-object v1

    .line 97
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/ms$b;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/ms$b;-><init>()V

    return-object p1
.end method
