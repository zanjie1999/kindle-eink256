.class final Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;
.super Ljava/lang/Object;
.source "DeeplinkStoreHelperImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->getOfferResource(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $asin:Ljava/lang/String;

.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $resourceReference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;->$asin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;->$resourceReference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V
    .locals 2

    const-string v0, "krxGetOfferResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/GetOfferError;

    move-result-object v0

    if-nez v0, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getResource()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;->$asin:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAvailability()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "regular_order"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAvailability()Ljava/lang/String;

    move-result-object v0

    const-string v1, "associate_order"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;->$resourceReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASIN in question is invalid"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Couldn\'t get offers. Maybe it not valid in this marketplace."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
