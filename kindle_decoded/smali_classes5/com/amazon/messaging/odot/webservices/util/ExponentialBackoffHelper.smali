.class public Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;
.super Ljava/lang/Object;
.source "ExponentialBackoffHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentMultiple:I

.field private final mFirstRetryIntervalMs:I

.field private final mJitterRange:I

.field private final mMaxRetryIntervalMs:I

.field private mRetryAttempts:I

.field private final mRng:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mRng:Ljava/security/SecureRandom;

    .line 39
    iput p2, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mMaxRetryIntervalMs:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lez p3, :cond_0

    .line 42
    iput p3, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mJitterRange:I

    goto :goto_0

    .line 44
    :cond_0
    iput v1, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mJitterRange:I

    .line 46
    sget-object p3, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->TAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, p2

    const-string v4, "ExponentialBackoffHelper: was constructed with a jitter percent range less than or equal to zero. It has been set to a default value (%d percent)"

    .line 47
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {p3, v3}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-lez p1, :cond_1

    .line 53
    iput p1, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mFirstRetryIntervalMs:I

    goto :goto_1

    .line 55
    :cond_1
    iput v1, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mFirstRetryIntervalMs:I

    .line 57
    sget-object p1, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->TAG:Ljava/lang/String;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, p2

    const-string p2, "ExponentialBackoffHelper: was constructed with a first retry interval value less than or equal to zero. It has been set to a default value (%d ms)"

    .line 58
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_1
    iput p4, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mRetryAttempts:I

    .line 65
    invoke-direct {p0, p4}, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->calculateMultiple(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mCurrentMultiple:I

    return-void
.end method

.method private calculateMultiple(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 72
    iget v2, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mFirstRetryIntervalMs:I

    mul-int v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    .line 73
    iget v3, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mMaxRetryIntervalMs:I

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

    .line 100
    iget v0, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mJitterRange:I

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

    .line 102
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 104
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method


# virtual methods
.method public nextRetryInterval()I
    .locals 4

    .line 84
    iget v0, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mRetryAttempts:I

    .line 86
    iget v0, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mFirstRetryIntervalMs:I

    iget v1, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mCurrentMultiple:I

    mul-int v0, v0, v1

    mul-int/lit8 v2, v0, 0x2

    .line 87
    iget v3, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mMaxRetryIntervalMs:I

    if-gt v2, v3, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 88
    iput v1, p0, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->mCurrentMultiple:I

    .line 91
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/util/ExponentialBackoffHelper;->getRandomFudge(I)I

    move-result v0

    return v0
.end method
