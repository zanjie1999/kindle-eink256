.class public Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;
.super Ljava/lang/Object;
.source "MetricsBatchPipelineConfiguration.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;


# instance fields
.field private final mBatchTransmitterType:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

.field private final mBoundedCheckBatchOpenTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

.field private final mBoundedExpiryTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxBatchOpenTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxBatchQueueCapacityBytes:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxBatchQueueEntries:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxNumEntriesPerBatch:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

.field private final mBoundedMaxSizePerBatchBytes:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

.field private final mBoundedPurgePeriodMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

.field private final mBoundedTransmissionPeriodMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;


# direct methods
.method public constructor <init>(JJIIIIJJJLcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;)V
    .locals 24

    move-object/from16 v0, p0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v9, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    const-string v2, "MaxBatchOpenTimeMillis"

    const-wide/16 v3, 0x1f4

    const-wide/32 v5, 0x240c8400

    move-object v1, v9

    move-wide/from16 v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v9, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchOpenTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    .line 46
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    const-string v11, "CheckBatchOpenTimeMillis"

    const-wide/16 v12, 0x1f4

    const-wide/32 v14, 0x5265c00

    move-object v10, v1

    move-wide/from16 v16, p3

    invoke-direct/range {v10 .. v17}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedCheckBatchOpenTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    .line 52
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    move/from16 v2, p7

    int-to-long v8, v2

    const-string v3, "MaxBatchQueueCapacityBytes"

    const-wide/16 v4, 0x400

    const-wide/32 v6, 0xa00000

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchQueueCapacityBytes:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    .line 58
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    move/from16 v2, p5

    int-to-long v2, v2

    const-string v11, "MaxBatchEntries"

    const-wide/16 v12, 0x1

    const-wide/32 v14, 0xf4240

    move-object v10, v1

    move-wide/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxNumEntriesPerBatch:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    .line 64
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    move/from16 v2, p6

    int-to-long v2, v2

    const-string v17, "MaxBatchSizeBytes"

    const-wide/16 v18, 0x400

    const-wide/32 v20, 0x100000

    move-object/from16 v16, v1

    move-wide/from16 v22, v2

    invoke-direct/range {v16 .. v23}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxSizePerBatchBytes:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    .line 70
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    move/from16 v2, p8

    int-to-long v2, v2

    const-string v4, "MaxBatchQueueEntries"

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x2710

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-wide/from16 p3, v5

    move-wide/from16 p5, v7

    move-wide/from16 p7, v2

    invoke-direct/range {p1 .. p8}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchQueueEntries:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    .line 76
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    const-string v2, "ExpiryTimeMillis"

    const-wide/32 v3, 0x5265c00

    const-wide v5, 0xe7be2c00L

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, p9

    invoke-direct/range {p1 .. p8}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedExpiryTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    .line 82
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    const-string v2, "PurgePeriodMillis"

    const-wide/32 v3, 0x36ee80

    const-wide/32 v5, 0xf731400

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, p11

    invoke-direct/range {p1 .. p8}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedPurgePeriodMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    .line 88
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    const-string v2, "TransmissionPeriodMillis"

    const-wide/16 v3, 0x2710

    const-wide/32 v5, 0x5265c00

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, p13

    invoke-direct/range {p1 .. p8}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;-><init>(Ljava/lang/String;JJJ)V

    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedTransmissionPeriodMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBatchTransmitterType:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

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

    .line 176
    :cond_1
    const-class v2, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 179
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;

    .line 181
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getCheckBatchOpenTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getCheckBatchOpenTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchOpenTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchOpenTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxNumEntriesPerBatch()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxNumEntriesPerBatch()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxSizePerBatchBytes()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxSizePerBatchBytes()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-result-object v2

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBatchTransmitterType()Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBatchTransmitterType:Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    return-object v0
.end method

.method public getCheckBatchOpenTimeMillis()J
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedCheckBatchOpenTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpiryTimeMillis()J
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedExpiryTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxBatchOpenTimeMillis()J
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchOpenTimeMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxBatchQueueCapacityBytes()J
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchQueueCapacityBytes:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxBatchQueueEntries()J
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxBatchQueueEntries:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxNumEntriesPerBatch()J
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxNumEntriesPerBatch:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSizePerBatchBytes()J
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedMaxSizePerBatchBytes:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPurgePeriodMillis()J
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedPurgePeriodMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransmissionPeriodMillis()J
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->mBoundedTransmissionPeriodMillis:Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 195
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getCheckBatchOpenTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchOpenTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxNumEntriesPerBatch()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getMaxSizePerBatchBytes()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsBatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
