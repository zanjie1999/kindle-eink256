.class public Lcom/amazon/xray/ui/fragment/ImageExcerptsFragment;
.super Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.source "ImageExcerptsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/ImageExcerptsFragment$ImageCardConsumedMetricRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createExcerptCardListAdapter(Ljava/util/List;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;)",
            "Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Ljava/util/List;Lcom/amazon/xray/ui/widget/CardCarousel;)V

    return-object v0
.end method

.method protected createExcerptLoader()Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/amazon/xray/model/loader/ImageExcerptsTask;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getDb()Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/loader/ImageExcerptsTask;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    return-object v0
.end method

.method protected getCardConsumedMetricRunnable()Ljava/lang/Runnable;
    .locals 2

    .line 52
    new-instance v0, Lcom/amazon/xray/ui/fragment/ImageExcerptsFragment$ImageCardConsumedMetricRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/xray/ui/fragment/ImageExcerptsFragment$ImageCardConsumedMetricRunnable;-><init>(Lcom/amazon/xray/ui/fragment/ImageExcerptsFragment$1;)V

    return-object v0
.end method

.method protected isShowingSpoilers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayTab_Images"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->onDestroy()V

    .line 36
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "XrayTab_Images"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method
