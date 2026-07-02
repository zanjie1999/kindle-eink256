.class public Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;
.super Ljava/lang/Object;
.source "BoundedNumberEvaluator.java"


# instance fields
.field log:Lcom/amazon/dp/logger/DPLogger;

.field final mMax:J

.field final mMin:J

.field final mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Lcom/amazon/dp/logger/DPLogger;

    const-string v0, "BoundedNumberEvaluator"

    invoke-direct {p1, v0}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->log:Lcom/amazon/dp/logger/DPLogger;

    .line 22
    iput-wide p2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mMin:J

    .line 23
    iput-wide p4, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mMax:J

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "value"

    const-string v6, "fieldName"

    cmp-long v7, p6, p2

    if-gez v7, :cond_0

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    .line 25
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    const-string p3, "less than min value"

    aput-object p3, p2, v3

    iget-wide p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mMin:J

    .line 26
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "field name"

    aput-object p3, p2, v1

    const-string/jumbo p3, "using min value"

    aput-object p3, p2, v0

    .line 25
    invoke-virtual {p1, v6, v5, p2}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-wide p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mMin:J

    iput-wide p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mValue:J

    goto :goto_0

    :cond_0
    cmp-long p2, p6, p4

    if-lez p2, :cond_1

    new-array p2, v0, [Ljava/lang/Object;

    .line 30
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    const-string p3, "greater than max value"

    aput-object p3, p2, v3

    iget-wide p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mMax:J

    .line 31
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v2

    const-string/jumbo p3, "using max value"

    aput-object p3, p2, v1

    .line 30
    invoke-virtual {p1, v6, v5, p2}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-wide p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mMax:J

    iput-wide p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mValue:J

    goto :goto_0

    .line 34
    :cond_1
    iput-wide p6, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mValue:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BoundedNumberEvaluator;->mValue:J

    return-wide v0
.end method
