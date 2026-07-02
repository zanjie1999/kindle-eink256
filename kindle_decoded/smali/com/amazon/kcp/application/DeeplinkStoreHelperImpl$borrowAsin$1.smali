.class final Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$borrowAsin$1;
.super Ljava/lang/Object;
.source "DeeplinkStoreHelperImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->borrowAsin(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $success:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$borrowAsin$1;->$success:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$borrowAsin$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V
    .locals 5

    const-string v0, "krxAcquireOfferResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    move-result-object v0

    .line 263
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getExecutionResult()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Borrow succeeded, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    iget-object p1, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$borrowAsin$1;->$success:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->BORROW_SUCCESS:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->PROGRAM_VIOLATION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "KLU_CONCURRENT_LIMIT_REACHED"

    const-string v3, "PRR_CONCURRENT_LIMIT_REACHED"

    const-string v4, "CU_CONCURRENT_LIMIT_REACHED"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    .line 276
    iget-object p1, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$borrowAsin$1;->$success:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->LIMIT_EXCEEDED:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Borrow error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$borrowAsin$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
