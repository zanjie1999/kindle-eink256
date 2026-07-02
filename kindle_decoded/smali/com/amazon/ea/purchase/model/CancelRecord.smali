.class public Lcom/amazon/ea/purchase/model/CancelRecord;
.super Ljava/lang/Object;
.source "CancelRecord.java"


# instance fields
.field public final maxAge:J

.field public final success:Z

.field public final timeCached:J


# direct methods
.method public constructor <init>(ZJJ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/amazon/ea/purchase/model/CancelRecord;->success:Z

    .line 32
    iput-wide p2, p0, Lcom/amazon/ea/purchase/model/CancelRecord;->maxAge:J

    .line 33
    iput-wide p4, p0, Lcom/amazon/ea/purchase/model/CancelRecord;->timeCached:J

    return-void
.end method


# virtual methods
.method public getAge()J
    .locals 4

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/CancelRecord;->timeCached:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isExpired()Z
    .locals 5

    .line 47
    invoke-virtual {p0}, Lcom/amazon/ea/purchase/model/CancelRecord;->getAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/CancelRecord;->maxAge:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
