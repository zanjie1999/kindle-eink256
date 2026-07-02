.class public final Lorg/apache/commons/lang/math/JVMRandom;
.super Ljava/util/Random;
.source "JVMRandom.java"


# static fields
.field private static final SHARED_RANDOM:Ljava/util/Random;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private constructed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    return-void
.end method

.method private static bitsRequired(J)I
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-wide v0, p0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-gez v5, :cond_0

    rsub-int/lit8 p0, v2, 0x40

    return p0

    :cond_0
    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    shl-long/2addr p0, v3

    shr-long/2addr v0, v3

    goto :goto_0
.end method

.method private static next63bits()J
    .locals 4

    .line 202
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static nextLong(J)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    neg-long v2, p0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x1

    cmp-long v6, v2, p0

    if-nez v6, :cond_0

    .line 153
    invoke-static {}, Lorg/apache/commons/lang/math/JVMRandom;->next63bits()J

    move-result-wide v0

    sub-long/2addr p0, v4

    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/JVMRandom;->bitsRequired(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    shr-long p0, v0, p0

    return-wide p0

    .line 160
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang/math/JVMRandom;->next63bits()J

    move-result-wide v2

    .line 161
    rem-long v6, v2, p0

    sub-long/2addr v2, v6

    sub-long v8, p0, v4

    add-long/2addr v2, v8

    cmp-long v8, v2, v0

    if-ltz v8, :cond_0

    return-wide v6

    .line 146
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Upper bound for nextInt must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 1

    .line 173
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 0

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public nextDouble()D
    .locals 2

    .line 193
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .line 184
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextInt()I
    .locals 1

    const v0, 0x7fffffff

    .line 105
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/JVMRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public nextLong()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 131
    invoke-static {v0, v1}, Lorg/apache/commons/lang/math/JVMRandom;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean p1, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
