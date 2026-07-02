.class Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;
.super Ljava/util/concurrent/FutureTask;
.source "PageNumberCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalcTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mCallback:Lcom/amazon/foundation/internal/IObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mTOCItem:Lcom/amazon/android/docviewer/ITOCItem;

.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            "I",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;->this$0:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    .line 165
    new-instance v0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;-><init>(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;Lcom/amazon/android/docviewer/ITOCItem;I)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 174
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;->mTOCItem:Lcom/amazon/android/docviewer/ITOCItem;

    .line 175
    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;->mCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .line 180
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 182
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;->this$0:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->access$100(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;->mCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    new-instance v1, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;->mTOCItem:Lcom/amazon/android/docviewer/ITOCItem;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;-><init>(Lcom/amazon/android/docviewer/ITOCItem;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
