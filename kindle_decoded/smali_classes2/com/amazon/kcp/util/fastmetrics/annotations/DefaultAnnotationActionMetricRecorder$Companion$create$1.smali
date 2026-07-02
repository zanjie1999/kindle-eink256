.class final synthetic Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion$create$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AnnotationActionMetricRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;->create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        "+",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;)V
    .locals 7

    const-class v3, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    const/4 v1, 0x3

    const-string v4, "recordMetrics"

    const-string v5, "recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion$create$1;->invoke(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "+",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    .line 46
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
