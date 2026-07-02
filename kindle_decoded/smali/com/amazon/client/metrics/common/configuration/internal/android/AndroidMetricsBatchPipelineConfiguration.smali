.class public Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsBatchPipelineConfiguration;
.super Ljava/lang/Object;
.source "AndroidMetricsBatchPipelineConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;


# instance fields
.field private final mDelegateBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/common/configuration/BatchTransmitterType;)V
    .locals 19

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    move-object v0, v1

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    .line 105
    invoke-static/range {v17 .. v17}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    .line 118
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    .line 117
    invoke-static/range {v17 .. v17}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object v17

    invoke-direct/range {v0 .. v17}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsBatchPipelineConfiguration;->mDelegateBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    return-void
.end method


# virtual methods
.method public getDelegateBatchPipelineConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsBatchPipelineConfiguration;->mDelegateBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    return-object v0
.end method
