.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    cmp-long v17, v1, v15

    if-ltz v17, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    .line 77
    :goto_0
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v3, v15

    if-ltz v17, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    .line 78
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v5, v15

    if-ltz v17, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 79
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v7, v15

    if-ltz v17, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    .line 80
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v9, v15

    if-ltz v17, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    .line 81
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v11, v15

    if-ltz v17, :cond_5

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 82
    :goto_5
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    iput-wide v1, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 85
    iput-wide v3, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 86
    iput-wide v5, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 87
    iput-wide v7, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 88
    iput-wide v9, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 89
    iput-wide v11, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 253
    instance-of v0, p1, Lcom/google/common/cache/CacheStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    check-cast p1, Lcom/google/common/cache/CacheStats;

    .line 255
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->hitCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->missCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 247
    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 267
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    const-string v3, "hitCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    const-string v3, "missCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    const-string v3, "loadSuccessCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    const-string v3, "loadExceptionCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    const-string v3, "totalLoadTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    const-string v3, "evictionCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
