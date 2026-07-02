.class final Lcom/amazon/falkor/panels/EpisodeListViewController$updateAboutThisStory$1;
.super Ljava/lang/Object;
.source "EpisodeListViewController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/panels/EpisodeListViewController;->updateAboutThisStory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/panels/EpisodeListViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateAboutThisStory$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 139
    sget-object p1, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateAboutThisStory$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateAboutThisStory$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getCurrentEpisodeInfoManager$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateAboutThisStory$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v2}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getCurrentBook$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getAboutThisStoryUrlOpener(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :cond_0
    return-void
.end method
