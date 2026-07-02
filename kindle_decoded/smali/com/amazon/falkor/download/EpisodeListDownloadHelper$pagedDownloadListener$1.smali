.class public final Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;
.super Ljava/lang/Object;
.source "EpisodeListDownload.kt"

# interfaces
.implements Lcom/amazon/falkor/download/PageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/download/EpisodeListDownloadHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/download/EpisodeListDownloadHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;->this$0:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageDownloadFailed()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;->this$0:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getCurrentEpisodeListViewController()Lcom/amazon/falkor/panels/EpisodeListViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->onPageDownloadFailed()V

    :cond_0
    return-void
.end method

.method public onPageDownloadSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "pagedList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;->this$0:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getCurrentEpisodeListViewController()Lcom/amazon/falkor/panels/EpisodeListViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->onPageDownloadSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method
