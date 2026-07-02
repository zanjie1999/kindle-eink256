.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;
.super Ljava/lang/Object;
.source "RetryWithDelay.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Flowable<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lorg/reactivestreams/Publisher<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mMaxRetries:I

.field private mRetryCount:I

.field private final mRetryDelaySec:J

.field private mTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WJ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mMaxRetries:I

    int-to-long p1, p2

    .line 29
    iput-wide p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mRetryDelaySec:J

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mRetryCount:I

    .line 31
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mRetryCount:I

    return p0
.end method

.method static synthetic access$104(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mRetryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mMaxRetries:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mRetryDelaySec:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    check-cast p1, Lio/reactivex/Flowable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/reactivestreams/Publisher<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
