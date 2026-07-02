.class final Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$recordMetrics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FalkorMRPRSuppressMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;)V
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
.field final synthetic $actionType:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;

.field final synthetic $alertType:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$recordMetrics$1;->$actionType:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$recordMetrics$1;->$alertType:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$FieldKey;->ACTION_ID:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$recordMetrics$1;->$actionType:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 35
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$FieldKey;->ALERT_TYPE:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$FieldKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$FieldKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$recordMetrics$1;->$alertType:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addString(FieldKey.ALERT\u2026E.value, alertType.value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$recordMetrics$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
