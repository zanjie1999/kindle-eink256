.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;
.super Ljava/lang/Object;
.source "DevicePowerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTIVE_WORKFLOW_BATTERY_PERCENTAGE_DELTA_METRIC_PREFIX:Ljava/lang/String; = "ActiveWorkflow_BatteryPercentageDeltaWithIntervalMinutes_"

.field private static final INACTIVE_WORKFLOW_BATTERY_PERCENTAGE_DELTA_METRIC_PREFIX:Ljava/lang/String; = "InactiveWorkflow_BatteryPercentageDeltaWithIntervalMinutes_"

.field private static final MONITORING_DEVICE_MODEL:Ljava/lang/String; = "MonitoringDeviceModel"

.field private static final MONITORING_OS_MAJOR_VERSION:Ljava/lang/String; = "MonitoringOSMajorVersion"

.field private static final REFRESH_TIME_MINUTES:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "DevicePowerMonitor"


# instance fields
.field public final DEFAULT_TIME_BETWEEN_REFRESH_MS:J

.field private final mContext:Landroid/content/Context;

.field private final mDevicePowerStatusProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

.field private mDevicePowerUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsMonitoring:Z

.field private mLastKnownPowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

.field private final mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

.field private mPowerSourceChangeBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;

.field private final mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private mRefreshPowerStatusRunnable:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

.field private mTimeBetweenRefreshMs:J

.field private mWorkflowActivationState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;Landroid/os/Handler;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->DEFAULT_TIME_BETWEEN_REFRESH_MS:J

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mWorkflowActivationState:Z

    const-wide/16 v1, -0x1

    .line 52
    iput-wide v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mTimeBetweenRefreshMs:J

    .line 53
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mIsMonitoring:Z

    .line 61
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerStatusProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    .line 64
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    .line 65
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 66
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->getPowerSourceChangeIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 6

    .line 57
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;Landroid/os/Handler;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Landroid/content/IntentFilter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mLastKnownPowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mLastKnownPowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerStatusProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->sendUpdateToListenerIfExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->resetRefreshPowerStatusRunnable()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->recordBatteryMetricsSinceLastRefresh(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mTimeBetweenRefreshMs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mRefreshPowerStatusRunnable:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static getPowerSourceChangeIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private recordBatteryMetricsSinceLastRefresh(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V
    .locals 5

    .line 229
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->isCharging()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DEVICE_POWER_MONITOR:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->getMetricsRecorder(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object v0

    .line 235
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->getBatteryPercentage()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->getBatteryPercentage()D

    move-result-wide p1

    sub-double/2addr v1, p1

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mWorkflowActivationState:Z

    if-eqz p2, :cond_1

    const-string p2, "ActiveWorkflow_BatteryPercentageDeltaWithIntervalMinutes_"

    goto :goto_0

    :cond_1
    const-string p2, "InactiveWorkflow_BatteryPercentageDeltaWithIntervalMinutes_"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 240
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MonitoringDeviceModel"

    invoke-virtual {v0, p2, p1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MonitoringOSMajorVersion"

    invoke-virtual {v0, p2, p1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mWorkflowActivationState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Recording Battery Consumption Metrics. Percentage Delta: %f workflowActive: %b"

    invoke-static {p2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->close()V

    return-void

    .line 230
    :cond_2
    :goto_1
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    const-string p2, "Not recording battery metrics since charging"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetRefreshPowerStatusRunnable()V
    .locals 4

    .line 260
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset DevicePowerStatus refresh runnable"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mRefreshPowerStatusRunnable:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mRefreshPowerStatusRunnable:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    iget-wide v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mTimeBetweenRefreshMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendUpdateToListenerIfExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;->onUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentDevicePowerStatus()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerStatusProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;->getDevicePowerStatus()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onWorkflowActivationStateChange(Z)V
    .locals 3

    monitor-enter p0

    .line 148
    :try_start_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWorkflowActivationStateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mIsMonitoring:Z

    if-nez v0, :cond_0

    .line 151
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    const-string v0, "Not currently monitoring. Skipping state change."

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mWorkflowActivationState:Z

    .line 156
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerStatusProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;->getDevicePowerStatus()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mLastKnownPowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    .line 159
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->sendUpdateToListenerIfExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    .line 160
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->resetRefreshPowerStatusRunnable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startMonitoring(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->DEFAULT_TIME_BETWEEN_REFRESH_MS:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->startMonitoring(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;J)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startMonitoring(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;J)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
    .locals 3

    monitor-enter p0

    .line 86
    :try_start_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startMonitoring"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Stopping monitoring before restarting"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->stopMonitoring()V

    :cond_0
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mIsMonitoring:Z

    .line 101
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;

    .line 102
    iput-wide p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mTimeBetweenRefreshMs:J

    .line 104
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mPowerSourceChangeBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;

    .line 105
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    invoke-direct {p1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mRefreshPowerStatusRunnable:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    .line 107
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mPowerSourceChangeBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;

    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->getPowerSourceChangeIntentFilter()Landroid/content/IntentFilter;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerStatusProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;->getDevicePowerStatus()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mLastKnownPowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    .line 112
    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Returning initial power status: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-object p1

    .line 92
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeBetweenRefreshMs should be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "devicePowerUpdateListener can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopMonitoring()V
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopMonitoring"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mRefreshPowerStatusRunnable:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mPowerSourceChangeBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catch_0
    :try_start_2
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->TAG:Ljava/lang/String;

    const-string v1, "mPowerSourceChangeBroadcastReceiver is not registered"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mRefreshPowerStatusRunnable:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$RefreshPowerStatusRunnable;

    .line 129
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mPowerSourceChangeBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$PowerSourceChangeBroadcastReceiver;

    .line 130
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mDevicePowerUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;

    const-wide/16 v0, -0x1

    .line 131
    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mTimeBetweenRefreshMs:J

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->mIsMonitoring:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
