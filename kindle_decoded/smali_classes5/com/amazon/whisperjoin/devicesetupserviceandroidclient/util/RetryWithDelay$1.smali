.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;
.super Ljava/lang/Object;
.source "RetryWithDelay.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lorg/reactivestreams/Publisher<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;->apply(Ljava/lang/Throwable;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Throwable;)Lorg/reactivestreams/Publisher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/reactivestreams/Publisher<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;

    invoke-static {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->access$104(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;

    invoke-static {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;

    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->access$300(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;

    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->access$400(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;->access$000()Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lio/reactivex/Flowable;->error(Ljava/lang/Throwable;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
