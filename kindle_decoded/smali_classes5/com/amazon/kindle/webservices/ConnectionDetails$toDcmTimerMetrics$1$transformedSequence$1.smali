.class final Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1$transformedSequence$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConnectionDetails.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->invoke(Lkotlin/sequences/Sequence;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;",
        ">;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1$transformedSequence$1;->this$0:Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1$transformedSequence$1;->invoke(Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Pair;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1$transformedSequence$1;->this$0:Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;

    iget-object v0, v0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->this$0:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1$transformedSequence$1;->this$0:Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;

    iget-object v3, v2, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->$prefix:Ljava/lang/String;

    iget-object v4, v2, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->$postfix:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->$delimiter:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/amazon/kindle/webservices/ConnectionDetails;->access$transformKey(Lcom/amazon/kindle/webservices/ConnectionDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->duration()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
