.class public abstract Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "BaseAuthorFollowResponseHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;
    }
.end annotation


# instance fields
.field private final GSON:Lcom/google/gson/Gson;

.field private final TAG:Ljava/lang/String;

.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    .line 20
    const-class v0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(BaseAuthorF\u2026ponseHandler::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->GSON:Lcom/google/gson/Gson;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final displayAPIFailureAlert(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->kre_home_error_message_ttile:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 80
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->kre_home_author_error_message_text:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 81
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "dialogBuilder.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method protected final getGSON()Lcom/google/gson/Gson;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method protected final getH()Landroid/os/Handler;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->h:Landroid/os/Handler;

    return-object v0
.end method

.method protected final isHttpUrlConnectionOk(Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "-",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status code was not OK, it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->h:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;-><init>(Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final reportToPMET(Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "metricConstant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Utils.getFactory().kindleReaderSDK ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.metricsManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 61
    invoke-virtual {v1, p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 62
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 65
    invoke-virtual {v1, p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 66
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_1
    :goto_0
    return-void
.end method
