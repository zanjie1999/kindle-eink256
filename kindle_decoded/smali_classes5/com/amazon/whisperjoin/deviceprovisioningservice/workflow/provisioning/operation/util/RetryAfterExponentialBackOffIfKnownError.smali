.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;
.super Ljava/lang/Object;
.source "RetryAfterExponentialBackOffIfKnownError.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RetryAfterExponentialBackOffIfKnownError"

.field private static final UNCHECKED_ERROR:I = -0x64


# instance fields
.field private final mKnownError:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryBackoffAttemptCount:I

.field private final mRetryBackoffBaseDurationSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;IJ)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->mKnownError:Ljava/lang/Class;

    .line 34
    iput p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->mRetryBackoffAttemptCount:I

    .line 35
    iput-wide p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->mRetryBackoffBaseDurationSeconds:J

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "knownError can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->mRetryBackoffBaseDurationSeconds:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->mRetryBackoffAttemptCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)Ljava/lang/Class;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->mKnownError:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    iget v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->mRetryBackoffAttemptCount:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lio/reactivex/Observable;->range(II)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$2;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->zipWith(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)V

    .line 54
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
