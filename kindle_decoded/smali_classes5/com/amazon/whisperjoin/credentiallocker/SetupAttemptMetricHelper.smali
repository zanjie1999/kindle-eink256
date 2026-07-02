.class Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;
.super Ljava/lang/Object;
.source "SetupAttemptMetricHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;
    .locals 2

    const-class v0, Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;

    monitor-enter v0

    .line 33
    :try_start_0
    new-instance v1, Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
