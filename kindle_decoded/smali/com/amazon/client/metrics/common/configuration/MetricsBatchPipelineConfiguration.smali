.class public Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;
.super Ljava/lang/Object;
.source "MetricsBatchPipelineConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;


# instance fields
.field private final mDelegateBatchPipelineConfiguration:Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/common/configuration/BatchTransmitterType;)V
    .locals 20

    move-object/from16 v0, p0

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsBatchPipelineConfiguration;

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-object/from16 v19, p17

    invoke-direct/range {v2 .. v19}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsBatchPipelineConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/common/configuration/BatchTransmitterType;)V

    iput-object v1, v0, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;->mDelegateBatchPipelineConfiguration:Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lcom/amazon/client/metrics/common/configuration/internal/NullMetricsBatchPipelineConfiguration;

    invoke-direct {v1}, Lcom/amazon/client/metrics/common/configuration/internal/NullMetricsBatchPipelineConfiguration;-><init>()V

    iput-object v1, v0, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;->mDelegateBatchPipelineConfiguration:Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;

    :goto_0
    return-void
.end method


# virtual methods
.method getDelegateBatchPipelineConfiguration()Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;->mDelegateBatchPipelineConfiguration:Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;

    return-object v0
.end method
