.class final Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FalkorFullSync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/FalkorFullSyncManager;-><init>(Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;Lcom/amazon/falkor/FalkorPluginPrefs;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/FalkorFullSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/FalkorFullSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;->this$0:Lcom/amazon/falkor/FalkorFullSyncManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;->this$0:Lcom/amazon/falkor/FalkorFullSyncManager;

    invoke-static {v0}, Lcom/amazon/falkor/FalkorFullSyncManager;->access$getSdk$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;->this$0:Lcom/amazon/falkor/FalkorFullSyncManager;

    invoke-static {v1}, Lcom/amazon/falkor/FalkorFullSyncManager;->access$getTAG$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFullSyncSuccess"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;->this$0:Lcom/amazon/falkor/FalkorFullSyncManager;

    invoke-static {v0}, Lcom/amazon/falkor/FalkorFullSyncManager;->access$getSdk$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;->this$0:Lcom/amazon/falkor/FalkorFullSyncManager;

    invoke-static {v1}, Lcom/amazon/falkor/FalkorFullSyncManager;->access$getTAG$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullSyncSuccess"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/falkor/FalkorFullSyncManager$onFullSyncSuccess$1;->this$0:Lcom/amazon/falkor/FalkorFullSyncManager;

    invoke-static {v0}, Lcom/amazon/falkor/FalkorFullSyncManager;->access$getFalkorPrefs$p(Lcom/amazon/falkor/FalkorFullSyncManager;)Lcom/amazon/falkor/FalkorPluginPrefs;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/falkor/FalkorPluginPrefs;->setHasFullSyncValidated()V

    return-void
.end method
