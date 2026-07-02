.class public Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;
.super Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.source "EntityExcerptsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$PassageCardConsumedMetricRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTITY_ID:I


# instance fields
.field private entityId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;->entityId:I

    return p0
.end method

.method static newInstance(Lcom/amazon/xray/model/object/Entity;)Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;
    .locals 1

    .line 34
    new-instance v0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;

    invoke-direct {v0}, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;-><init>()V

    .line 35
    iput-object p0, v0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->entity:Lcom/amazon/xray/model/object/Entity;

    return-object v0
.end method


# virtual methods
.method protected createExcerptCardListAdapter(Ljava/util/List;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;)",
            "Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object v2, v2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    iget-object v3, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Ljava/util/List;Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/model/object/Entity;)V

    return-object v0
.end method

.method protected createExcerptLoader()Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/amazon/xray/model/loader/EntityExcerptsTask;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/activity/XrayActivity;->getDb()Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v1

    iget v2, p0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;->entityId:I

    invoke-direct {v0, v1, v2}, Lcom/amazon/xray/model/loader/EntityExcerptsTask;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;I)V

    return-object v0
.end method

.method protected getCardConsumedMetricRunnable()Ljava/lang/Runnable;
    .locals 2

    .line 75
    new-instance v0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$PassageCardConsumedMetricRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$PassageCardConsumedMetricRunnable;-><init>(Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$1;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;->entityId:I

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    iget v0, p0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;->entityId:I

    const-string v1, "entityId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;->entityId:I

    .line 51
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayTab_TopMentions"

    .line 52
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->onDestroy()V

    .line 59
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "XrayTab_TopMentions"

    .line 60
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method
