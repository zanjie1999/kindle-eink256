.class final Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteFromLibraryActionButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->createRefundEligibleCheckCallback$DeleteContentModule_release(Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Lkotlin/jvm/functions/Function1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteFromLibraryActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteFromLibraryActionButton.kt\ncom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1\n+ 2 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n*L\n1#1,171:1\n6#2:172\n*E\n*S KotlinDebug\n*F\n+ 1 DeleteFromLibraryActionButton.kt\ncom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1\n*L\n123#1:172\n*E\n"
.end annotation


# instance fields
.field final synthetic $contentData:Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->$contentData:Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->invoke(Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->isEligible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->getOrderId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$getMetricsManager$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "CantileverLaunch"

    invoke-static {v0, v1}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportUIMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->$contentData:Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$showRefundPage(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$getMetricsManager$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "DeleteDialogLaunchRefundNotEligible"

    invoke-static {p1, v0}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportUIMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->$contentData:Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    invoke-static {p1, v0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$showDeleteFromLibraryDialog(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->getError()Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;->getErrorCode()Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->UNSUPPORTED_MARKETPLACE:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    if-ne v0, v1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$getLogger$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    .line 172
    const-class v0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Unsupported marketplace for refund"

    .line 123
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$getMetricsManager$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "DeleteDialogLaunchUnsupportedMarketplace"

    invoke-static {p1, v0}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportUIMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->$contentData:Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    invoke-static {p1, v0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$showDeleteFromLibraryDialog(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$getMetricsManager$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportErrorDialogMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/deletecontent/api/DeleteContentError;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->this$0:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;->getErrorCode()Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->access$showErrorDialog(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
