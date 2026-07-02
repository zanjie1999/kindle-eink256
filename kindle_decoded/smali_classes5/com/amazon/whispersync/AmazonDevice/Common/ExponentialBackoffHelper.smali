.class public Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;
.super Ljava/lang/Object;
.source "ExponentialBackoffHelper.java"


# static fields
.field public static final DEFAULT_JITTER:I = 0x1e


# instance fields
.field private mCurrentMultiple:I

.field private final mFirstRetryIntervalMs:I

.field private final mJitterRange:I

.field private final mMaxRetryIntervalMs:I

.field private mRetryAttempts:I

.field private final mRng:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mRng:Ljava/security/SecureRandom;

    .line 39
    iput p2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mMaxRetryIntervalMs:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lez p3, :cond_0

    .line 43
    iput p3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mJitterRange:I

    goto :goto_0

    .line 47
    :cond_0
    iput v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mJitterRange:I

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, p2

    const-string v3, "ExponentialBackoffHelper: was constructed with a jitter percent range less than or equal to zero. It has been set to a default value (%d percent)"

    .line 49
    invoke-static {v3, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-lez p1, :cond_1

    .line 56
    iput p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mFirstRetryIntervalMs:I

    goto :goto_1

    .line 60
    :cond_1
    iput v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mFirstRetryIntervalMs:I

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, p2

    const-string p2, "ExponentialBackoffHelper: was constructed with a first retry interval value less than or equal to zero. It has been set to a default value (%d ms)"

    .line 62
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_1
    iput p4, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mRetryAttempts:I

    .line 69
    invoke-direct {p0, p4}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->calculateMultiple(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mCurrentMultiple:I

    return-void
.end method

.method private calculateMultiple(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 78
    iget v2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mFirstRetryIntervalMs:I

    mul-int v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    .line 79
    iget v3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mMaxRetryIntervalMs:I

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private getRandomFudge(I)I
    .locals 4

    .line 111
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mJitterRange:I

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    if-eqz v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 116
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method


# virtual methods
.method public nextRetryInterval()I
    .locals 4

    .line 92
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mRetryAttempts:I

    .line 94
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mFirstRetryIntervalMs:I

    iget v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mCurrentMultiple:I

    mul-int v0, v0, v1

    mul-int/lit8 v2, v0, 0x2

    .line 95
    iget v3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mMaxRetryIntervalMs:I

    if-gt v2, v3, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 97
    iput v1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mCurrentMultiple:I

    .line 100
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->getRandomFudge(I)I

    move-result v0

    return v0
.end method

.method public numberOfRetryAttempts()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/ExponentialBackoffHelper;->mRetryAttempts:I

    return v0
.end method
