.class final Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConnectionDetails.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/ConnectionDetails;->toDcmTimerMetrics(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/sequences/Sequence<",
        "+",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;",
        ">;>;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $delimiter:Ljava/lang/CharSequence;

.field final synthetic $postfix:Ljava/lang/String;

.field final synthetic $prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/webservices/ConnectionDetails;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webservices/ConnectionDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->this$0:Lcom/amazon/kindle/webservices/ConnectionDetails;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->$prefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->$postfix:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->$delimiter:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lkotlin/sequences/Sequence;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->invoke(Lkotlin/sequences/Sequence;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/Sequence;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1$transformedSequence$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1$transformedSequence$1;-><init>(Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 157
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 158
    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Lkotlin/sequences/Sequence;)V

    return-object v0
.end method
