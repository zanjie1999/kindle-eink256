.class final Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordBookOpenMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->emitOpenCanceledMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic $cancelMethod:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

.field final synthetic $clientId:Ljava/lang/String;

.field final synthetic $eventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->$clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->$eventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->$cancelMethod:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->$clientId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->access$collectCommonMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->$eventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->collectTimes()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->$cancelMethod:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel_method"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addString(KEY_CANCEL_METHOD, cancelMethod.value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
