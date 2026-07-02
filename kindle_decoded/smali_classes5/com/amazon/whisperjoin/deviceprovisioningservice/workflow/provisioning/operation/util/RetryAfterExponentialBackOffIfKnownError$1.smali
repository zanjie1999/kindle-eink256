.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$1;
.super Ljava/lang/Object;
.source "RetryAfterExponentialBackOffIfKnownError.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/util/Pair<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Integer;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/util/Pair;)Lio/reactivex/ObservableSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Integer;",
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

    .line 57
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 58
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 62
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->access$100()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Backing off workflow for %d seconds"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

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

    .line 54
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$1;->apply(Landroid/util/Pair;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
