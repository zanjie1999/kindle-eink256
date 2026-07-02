.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;
.super Ljava/lang/Object;
.source "ZeroTouchProvisioningModule.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

.field private final mWorkflowFactory:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->mWorkflowFactory:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;

    .line 34
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    return-void
.end method


# virtual methods
.method providesFireOSUtil()Lcom/amazon/whisperjoin/util/FireOSUtil;
    .locals 2

    .line 63
    new-instance v0, Lcom/amazon/whisperjoin/util/FireOSUtil;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/util/FireOSUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method providesZeroTouchProvisioningSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    return-object v0
.end method

.method providesZeroTouchWorkflowController(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;
    .locals 12

    .line 46
    new-instance v10, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    move-object v11, p0

    iget-object v1, v11, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual/range {p8 .. p8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getThrottleSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    move-result-object v9

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;)V

    return-object v10
.end method

.method providesZeroTouchWorkflowFactory()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->mWorkflowFactory:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;

    return-object v0
.end method

.method providesZeroTouchWorkflowFailureUpdateHandler(Lcom/amazon/whisperjoin/util/FireOSUtil;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Ljava/lang/Boolean;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;
    .locals 13

    .line 74
    new-instance v12, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 75
    invoke-virtual/range {p4 .. p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getThrottleSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getZtwFailedMonitorWindowPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v4

    .line 76
    invoke-virtual/range {p4 .. p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getThrottleSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getZtwFailedThreshold()J

    move-result-wide v6

    .line 77
    invoke-virtual/range {p4 .. p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getThrottleSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getZtwDssFailedMonitorWindowPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v8

    .line 78
    invoke-virtual/range {p4 .. p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getThrottleSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getZtwDssFailedThreshold()J

    move-result-wide v10

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;-><init>(Lcom/amazon/whisperjoin/util/FireOSUtil;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;ZJJJJ)V

    return-object v12
.end method

.method providesZeroTouchWorkflowMetricsReporter(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;
    .locals 1

    .line 83
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;)V

    return-object v0
.end method

.method providesZeroTouchWorkflowRouter(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;
    .locals 1

    .line 68
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;)V

    return-object v0
.end method
