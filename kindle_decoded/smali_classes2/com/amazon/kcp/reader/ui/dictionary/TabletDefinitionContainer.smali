.class public Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;
.super Lcom/amazon/kindle/krx/ui/InfoCardView;
.source "TabletDefinitionContainer.java"


# static fields
.field private static dictionaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/InfoCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->init()V

    return-void
.end method

.method public static declared-synchronized deleteDictionariesForAsin(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->dictionaries:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->dictionaries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDictionaries()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->dictionaries:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDictionaries(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;

    monitor-enter v0

    .line 35
    :try_start_0
    sput-object p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->dictionaries:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getNameForMetrics()Ljava/lang/String;
    .locals 1

    const-string v0, "DictionaryInfoCard"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$string;->dictionary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->close()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getChildViews()V

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupTabletCardLinks()V

    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 2

    .line 124
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 131
    sget v0, Lcom/amazon/kindle/dcm/R$drawable;->bg_info_card_light:I

    goto :goto_0

    .line 127
    :cond_0
    sget v0, Lcom/amazon/kindle/dcm/R$drawable;->bg_info_card_dark:I

    .line 134
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    return-void
.end method

.method public setCurrentSelection(Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setCurrentSelection(Lcom/amazon/kindle/krx/content/IContentSelection;)V

    return-void
.end method

.method public setDictionaryPresenter(Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setDictionaryPresenter(Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;)V

    return-void
.end method

.method public updatePopupVisibility()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->definitionViewController:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updatePopupVisibility()Z

    move-result v0

    return v0
.end method
