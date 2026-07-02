.class final Lcom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1;
.super Ljava/lang/Object;
.source "EpisodeListViewController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/panels/EpisodeListViewController;->onNetworkConnectivityChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEpisodeListViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpisodeListViewController.kt\ncom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1\n*L\n1#1,294:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/panels/EpisodeListViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getEpisodeListDownloadHelper$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getEpisodes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$refreshAll(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onNetworkConnectivityChanged$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$refreshAll(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    :cond_1
    :goto_0
    return-void
.end method
