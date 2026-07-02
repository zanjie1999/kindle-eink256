.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
.super Ljava/lang/Object;
.source "BLETransportBuilder.java"


# instance fields
.field private mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

.field private mCommandExecutor:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

.field private mOperationRetryCount:J

.field private mOperationTimeout:J

.field private mOperationTimeoutUnit:Ljava/util/concurrent/TimeUnit;

.field private mRetryExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mContext:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    .line 17
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    const-wide/16 v1, -0x1

    .line 18
    iput-wide v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeout:J

    .line 19
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 20
    iput-wide v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationRetryCount:J

    .line 21
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    .line 22
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mRetryExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public createBLETransport()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;
    .locals 17

    move-object/from16 v0, p0

    .line 65
    iget-object v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 68
    iget-object v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    if-eqz v1, :cond_6

    .line 71
    iget-object v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    if-eqz v1, :cond_5

    .line 74
    iget-object v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    .line 77
    iget-object v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mRetryExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3

    .line 80
    iget-wide v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 83
    iget-object v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_1

    .line 86
    iget-wide v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationRetryCount:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 90
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;

    iget-object v7, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    iget-object v9, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    iget-wide v10, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeout:J

    iget-object v12, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v13, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationRetryCount:J

    iget-object v15, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mRetryExecutor:Ljava/util/concurrent/ExecutorService;

    move-object v6, v1

    move-object/from16 v16, v2

    invoke-direct/range {v6 .. v16}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;-><init>(Landroid/content/Context;Lcom/amazon/whisperbridge/ble/BleManager;Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-object v1

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Retry count can not be less than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "OperationTimeoutUnits can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OperationTimeout must be greater than 0, was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "retryExecutor can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "commandExecutor can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encoding helper can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bleManager can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBleManager(Lcom/amazon/whisperbridge/ble/BleManager;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    return-object p0
.end method

.method public setCommandExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setEncodingHelpers(Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    return-object p0
.end method

.method public setOperationRetryCount(J)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationRetryCount:J

    return-object p0
.end method

.method public setOperationTimeout(J)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeout:J

    return-object p0
.end method

.method public setOperationTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mOperationTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public setRetryExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->mRetryExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
