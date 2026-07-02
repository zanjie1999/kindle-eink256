.class final Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordComicsMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics;->recordDay1TooltipMetric(Ljava/lang/String;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V
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
.field final synthetic $elementPosition:I

.field final synthetic $elementSequenceTotal:I

.field final synthetic $tooltipName:Ljava/lang/String;

.field final synthetic $userAction:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;


# direct methods
.method constructor <init>(Ljava/lang/String;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->$tooltipName:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->$elementPosition:I

    iput p3, p0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->$elementSequenceTotal:I

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->$userAction:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->$tooltipName:Ljava/lang/String;

    const-string v1, "element_name"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "element_type"

    const-string/jumbo v1, "tooltip"

    .line 61
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 62
    iget v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->$elementPosition:I

    const-string v1, "element_position"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 63
    iget v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->$elementSequenceTotal:I

    const-string v1, "element_sequence_total"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->$userAction:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->getMetricName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_action"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addString(FIELD_KEY_ONBO\u2026N, userAction.metricName)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
