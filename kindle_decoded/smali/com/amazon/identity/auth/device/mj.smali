.class public final Lcom/amazon/identity/auth/device/mj;
.super Lcom/amazon/identity/auth/device/mp;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/mj$a;
    }
.end annotation


# static fields
.field private static uT:Lcom/amazon/identity/auth/device/mj;


# instance fields
.field private uU:Lcom/amazon/identity/auth/device/mj$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/mp;-><init>()V

    .line 58
    new-instance v0, Lcom/amazon/identity/auth/device/mj$a;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/mj$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/mj;->uU:Lcom/amazon/identity/auth/device/mj$a;

    .line 1035
    iget-object p1, v0, Lcom/amazon/identity/auth/device/mj$a;->uW:Lcom/amazon/client/metrics/MetricEvent;

    const-string v0, "MAPAPP_DCMFireOSPeriodic_SUPPORTED"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 59
    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    const-string p1, "FireOSPeriodicMetricsCollector"

    const-string v0, "Successfully create FireOSPeriodicMetricsCollector."

    .line 60
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized aL(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mj;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/mj;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/mj;->uT:Lcom/amazon/identity/auth/device/mj;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/amazon/identity/auth/device/mj;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/mj;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/mj;->uT:Lcom/amazon/identity/auth/device/mj;

    .line 76
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/mj;->uT:Lcom/amazon/identity/auth/device/mj;
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

    .line 85
    invoke-static {}, Lcom/amazon/identity/auth/device/mn;->iP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/mj;->uU:Lcom/amazon/identity/auth/device/mj$a;

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, v0, Lcom/amazon/identity/auth/device/mj$a;->uW:Lcom/amazon/client/metrics/MetricEvent;

    if-eqz v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 87
    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public eL(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 2

    .line 95
    invoke-static {}, Lcom/amazon/identity/auth/device/mn;->iP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/mj;->uU:Lcom/amazon/identity/auth/device/mj$a;

    if-eqz v0, :cond_0

    .line 4035
    iget-object v0, v0, Lcom/amazon/identity/auth/device/mj$a;->uW:Lcom/amazon/client/metrics/MetricEvent;

    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lcom/amazon/identity/auth/device/ml;

    invoke-direct {v1, v0, p1}, Lcom/amazon/identity/auth/device/ml;-><init>(Lcom/amazon/client/metrics/MetricEvent;Ljava/lang/String;)V

    return-object v1

    .line 101
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/ms$b;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/ms$b;-><init>()V

    return-object p1
.end method
