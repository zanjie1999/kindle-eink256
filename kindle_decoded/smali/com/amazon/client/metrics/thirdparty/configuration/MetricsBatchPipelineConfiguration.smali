.class public Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;
.super Ljava/lang/Object;
.source "MetricsBatchPipelineConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;


# instance fields
.field private mBatchQueueType:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

.field private final mBatchTransmitterType:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

.field private final mBoundedCheckBatchOpenTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private final mBoundedExpiryTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxBatchOpenTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxBatchQueueCapacityBytes:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxBatchQueueEntries:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxNumEntriesPerBatch:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxSizePerBatchBytes:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private final mBoundedPurgePeriodMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private final mBoundedTransmissionPeriodMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

.field private mDirectoryPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;)V
    .locals 18

    move-object/from16 v0, p0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    .line 84
    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBatchQueueType:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-object/from16 v1, p2

    .line 85
    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mDirectoryPrefix:Ljava/lang/String;

    .line 87
    new-instance v9, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    const-string v2, "MaxBatchOpenTimeMillis"

    const-wide/16 v3, 0x1f4

    const-wide/32 v5, 0x240c8400

    move-object v1, v9

    move-wide/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v9, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchOpenTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    .line 92
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    const-string v11, "CheckBatchOpenTimeMillis"

    const-wide/16 v12, 0x1f4

    const-wide/32 v14, 0x5265c00

    move-object v10, v1

    move-wide/from16 v16, p5

    invoke-direct/range {v10 .. v17}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedCheckBatchOpenTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    .line 98
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    move/from16 v2, p9

    int-to-long v8, v2

    const-string v3, "MaxBatchQueueCapacityBytes"

    const-wide/16 v4, 0x400

    const-wide/32 v6, 0xa00000

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchQueueCapacityBytes:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    .line 104
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    move/from16 v2, p7

    int-to-long v2, v2

    const-string v11, "MaxBatchEntries"

    const-wide/16 v12, 0x1

    const-wide/32 v14, 0xf4240

    move-object v10, v1

    move-wide/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxNumEntriesPerBatch:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    .line 110
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    move/from16 v2, p8

    int-to-long v2, v2

    const-string v4, "MaxBatchSizeBytes"

    const-wide/16 v5, 0x400

    const-wide/32 v7, 0x100000

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-wide/from16 p3, v5

    move-wide/from16 p5, v7

    move-wide/from16 p7, v2

    invoke-direct/range {p1 .. p8}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxSizePerBatchBytes:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    .line 116
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    move/from16 v2, p10

    int-to-long v2, v2

    const-string v4, "MaxBatchQueueEntries"

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x2710

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-wide/from16 p3, v5

    move-wide/from16 p5, v7

    move-wide/from16 p7, v2

    invoke-direct/range {p1 .. p8}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchQueueEntries:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    .line 122
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    const-string v2, "ExpiryTimeMillis"

    const-wide/32 v3, 0x5265c00

    const-wide v5, 0xe7be2c00L

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, p11

    invoke-direct/range {p1 .. p8}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedExpiryTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    .line 128
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    const-string v2, "PurgePeriodMillis"

    const-wide/32 v3, 0x36ee80

    const-wide/32 v5, 0xf731400

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, p13

    invoke-direct/range {p1 .. p8}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedPurgePeriodMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    .line 134
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    const-string v2, "TransmissionPeriodMillis"

    const-wide/16 v3, 0x2710

    const-wide/32 v5, 0x5265c00

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, p15

    invoke-direct/range {p1 .. p8}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedTransmissionPeriodMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    move-object/from16 v1, p17

    .line 140
    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBatchTransmitterType:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 268
    :cond_1
    const-class v2, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 271
    :cond_2
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;

    .line 273
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 274
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getCheckBatchOpenTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getCheckBatchOpenTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 278
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchOpenTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchOpenTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 279
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 280
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 281
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxNumEntriesPerBatch()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxNumEntriesPerBatch()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 282
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxSizePerBatchBytes()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxSizePerBatchBytes()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 283
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 284
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 285
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 286
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object v2

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBatchQueueType:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    return-object v0
.end method

.method public getBatchTransmitterType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBatchTransmitterType:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    return-object v0
.end method

.method public getCheckBatchOpenTimeMillis()J
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedCheckBatchOpenTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDirectoryPrefix()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mDirectoryPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTimeMillis()J
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedExpiryTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxBatchOpenTimeMillis()J
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchOpenTimeMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxBatchQueueCapacityBytes()J
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchQueueCapacityBytes:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxBatchQueueEntries()J
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchQueueEntries:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxNumEntriesPerBatch()J
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxNumEntriesPerBatch:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSizePerBatchBytes()J
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxSizePerBatchBytes:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPurgePeriodMillis()J
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedPurgePeriodMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransmissionPeriodMillis()J
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBoundedTransmissionPeriodMillis:Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getDirectoryPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getCheckBatchOpenTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchOpenTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxNumEntriesPerBatch()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getMaxSizePerBatchBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBatchQueueType(Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBatchQueueType:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    if-nez v0, :cond_0

    .line 235
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mBatchQueueType:Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    :cond_0
    return-void
.end method

.method public setDirectoryPrefix(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mDirectoryPrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 246
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsBatchPipelineConfiguration;->mDirectoryPrefix:Ljava/lang/String;

    :cond_0
    return-void
.end method
