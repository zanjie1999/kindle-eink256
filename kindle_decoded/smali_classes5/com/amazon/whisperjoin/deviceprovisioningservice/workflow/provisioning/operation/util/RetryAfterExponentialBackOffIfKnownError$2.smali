.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$2;
.super Ljava/lang/Object;
.source "RetryAfterExponentialBackOffIfKnownError.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


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
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Integer;",
        "Landroid/util/Pair<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;Ljava/lang/Integer;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, -0x64

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ne v0, v1, :cond_0

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 51
    :cond_1
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/util/RetryAfterExponentialBackOffIfKnownError$2;->apply(Ljava/lang/Throwable;Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
