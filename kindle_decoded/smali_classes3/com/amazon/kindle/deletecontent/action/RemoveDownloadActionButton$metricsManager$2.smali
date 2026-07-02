.class final Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$metricsManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoveDownloadActionButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$metricsManager$2;->this$0:Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$metricsManager$2;->this$0:Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->access$getSdkProxy$p(Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;)Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->getMetricsManager$DeleteContentModule_release()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$metricsManager$2;->invoke()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    return-object v0
.end method
