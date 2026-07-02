.class public Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;
.super Ljava/lang/Object;
.source "CredentialSyncMetricsRecorder.java"


# static fields
.field private static final FFS_CRED_SYNC_PREFIX:Ljava/lang/String; = "FFS.SyncCredentials."

.field private static final JSON_EXCEPTION_COUNT:Ljava/lang/String; = "JSONExceptionCount"

.field private static final SET_CREDENTIALS_ZIGBEE_BLE_CALL_COUNT:Ljava/lang/String; = "SetCredentialsZigbeeBLECallCount"

.field private static final SET_CREDENTIALS_ZIGBEE_BLE_ENTRY_COUNT_BLE:Ljava/lang/String; = "SetCredentialsZigbeeBLEEntryCountBLE"

.field private static final SET_CREDENTIALS_ZIGBEE_BLE_ENTRY_COUNT_ZIGBEE:Ljava/lang/String; = "SetCredentialsZigbeeBLEEntryCountZigbee"

.field private static final SET_CREDENTIALS_ZIGBEE_CALL_COUNT:Ljava/lang/String; = "SetCredentialsZigbeeCallCount"

.field private static final SET_CREDENTIALS_ZIGBEE_ENTRY_COUNT_ZIGBEE:Ljava/lang/String; = "SetCredentialsZigbeeEntryCountZigbee"

.field private static final SYNC_FAILURE_COUNT:Ljava/lang/String; = "FFS.SyncCredentials.FailureCount"

.field private static final SYNC_REQUEST_DSHS:Ljava/lang/String; = "FFS.SyncCredentials.RequestCount-DSHS"

.field private static final SYNC_REQUEST_MIDDLEWARE:Ljava/lang/String; = "FFS.SyncCredentials.RequestCount-Middleware"

.field private static final SYNC_REQUEST_S2DM:Ljava/lang/String; = "FFS.SyncCredentials.RequestCount-S2DM"

.field private static final SYNC_REQUEST_UNKNOWN:Ljava/lang/String; = "FFS.SyncCredentials.RequestCount-UNKNOWN"

.field private static final SYNC_REQUEST_UNRECOGNIZED_SOURCE:Ljava/lang/String; = "FFS.SyncCredentials.RequestCount-UnrecognizedSource"

.field private static final SYNC_START_COUNT:Ljava/lang/String; = "FFS.SyncCredentials.StartCount"

.field private static final SYNC_SUCCESS_COUNT:Ljava/lang/String; = "FFS.SyncCredentials.SuccessCount"


# instance fields
.field private final mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-void
.end method

.method private getNewRecorder()Lcom/amazon/whisperjoin/metrics/MetricsRecorder;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->DSHS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->getMetricsRecorder(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object v0

    return-object v0
.end method

.method private recordCount(Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->getNewRecorder()Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->close()V

    return-void
.end method


# virtual methods
.method public onJSONSerializationError()V
    .locals 1

    const-string v0, "JSONExceptionCount"

    .line 60
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSyncCredentialsDSHS()V
    .locals 1

    const-string v0, "FFS.SyncCredentials.RequestCount-DSHS"

    .line 68
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSyncCredentialsMiddleware()V
    .locals 1

    const-string v0, "FFS.SyncCredentials.RequestCount-Middleware"

    .line 72
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSyncCredentialsS2DM()V
    .locals 1

    const-string v0, "FFS.SyncCredentials.RequestCount-S2DM"

    .line 64
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSyncCredentialsUnknown()V
    .locals 1

    const-string v0, "FFS.SyncCredentials.RequestCount-UNKNOWN"

    .line 80
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSyncCredentialsUnrecognizedSource()V
    .locals 1

    const-string v0, "FFS.SyncCredentials.RequestCount-UnrecognizedSource"

    .line 76
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method

.method public onSetCredentials(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->getNewRecorder()Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object v0

    const-string v1, "SetCredentialsZigbeeCallCount"

    .line 45
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;->getAuthMaterials()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v1, p1

    const-string p1, "SetCredentialsZigbeeEntryCountZigbee"

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 47
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->close()V

    return-void
.end method

.method public onSetCredentials(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->getNewRecorder()Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object v0

    const-string v1, "SetCredentialsZigbeeBLECallCount"

    .line 52
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;->getAuthMaterials()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v1, p1

    const-string p1, "SetCredentialsZigbeeBLEEntryCountZigbee"

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 54
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->getAuthMaterials()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double p1, p1

    const-string v1, "SetCredentialsZigbeeBLEEntryCountBLE"

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 56
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->close()V

    return-void
.end method

.method public onSyncCredentialsFailure()V
    .locals 1

    const-string v0, "FFS.SyncCredentials.FailureCount"

    .line 92
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method

.method public onSyncCredentialsStart()V
    .locals 1

    const-string v0, "FFS.SyncCredentials.StartCount"

    .line 84
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method

.method public onSyncCredentialsSuccess()V
    .locals 1

    const-string v0, "FFS.SyncCredentials.SuccessCount"

    .line 88
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->recordCount(Ljava/lang/String;)V

    return-void
.end method
