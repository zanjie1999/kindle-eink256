.class final Lcom/amazon/kindle/deletecontent/api/DeleteContentClient$refundEligibilityCheckWithASINDetails$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteContentClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->refundEligibilityCheckWithASINDetails(Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callBack:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient$refundEligibilityCheckWithASINDetails$1;->$callBack:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient$refundEligibilityCheckWithASINDetails$1;->invoke(Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->INSTANCE:Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->access$getMetricsManager$p(Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "RefundCheckResponse"

    invoke-static {v0, v1}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportWebRequestMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient$refundEligibilityCheckWithASINDetails$1;->$callBack:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
