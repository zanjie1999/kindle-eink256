.class public Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;
.super Ljava/lang/Object;
.source "BoundedNumberEvaluator.java"


# instance fields
.field log:Lcom/amazon/whispersync/dp/logger/DPLogger;

.field final mFieldName:Ljava/lang/String;

.field final mMax:J

.field final mMin:J

.field final mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v7, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v8, "BoundedNumberEvaluator"

    invoke-direct {v7, v8}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    iput-object v7, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 22
    iput-wide v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mMin:J

    .line 23
    iput-wide v3, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mMax:J

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    const-string v14, "fieldName"

    cmp-long v15, v5, v1

    if-gez v15, :cond_0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v2, "less than min value"

    aput-object v2, v1, v11

    iget-wide v2, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "field name"

    aput-object v2, v1, v9

    const-string/jumbo v2, "using min value"

    aput-object v2, v1, v8

    invoke-virtual {v7, v14, v13, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-wide v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mMin:J

    iput-wide v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mValue:J

    :goto_0
    move-object/from16 v1, p1

    goto :goto_1

    :cond_0
    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    new-array v1, v8, [Ljava/lang/Object;

    .line 30
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v2, "greater than max value"

    aput-object v2, v1, v11

    iget-wide v2, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    const-string/jumbo v2, "using max value"

    aput-object v2, v1, v9

    invoke-virtual {v7, v14, v13, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-wide v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mMax:J

    iput-wide v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mValue:J

    goto :goto_0

    .line 34
    :cond_1
    iput-wide v5, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mValue:J

    goto :goto_0

    .line 36
    :goto_1
    iput-object v1, v0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mFieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/BoundedNumberEvaluator;->mValue:J

    return-wide v0
.end method
