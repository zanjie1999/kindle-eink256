.class Lcom/amazon/kcp/library/LibraryFragment$2;
.super Ljava/lang/Object;
.source "LibraryFragment.java"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFragmentManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$100(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method public setLibraryMenuOptionsBarEnabled(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$200(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->setLibraryMenuOptionsBarEnabled(Z)V

    return-void
.end method

.method showBackIssues(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 2

    .line 130
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$400(Lcom/amazon/kcp/library/LibraryFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryFragment;->access$500(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/LibraryContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "BackIssues"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordPresentLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 2

    .line 115
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isPeriodical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFragment$2;->showBackIssues(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getItemID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getItemID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFragment$2;->showNarrative(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFragment$2;->showSeries(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/library/LibraryFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "showGroupItem() called with an item that is not periodical or series"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method showNarrative(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$100(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    const-class v0, Lcom/amazon/kcp/integrator/LargeNarrativeProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/integrator/LargeNarrativeProvider;

    if-nez v1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$100(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getItemID()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryFragment;->access$500(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v4

    new-instance v5, Lcom/amazon/kcp/library/LibraryFragment$2$1;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/library/LibraryFragment$2$1;-><init>(Lcom/amazon/kcp/library/LibraryFragment$2;)V

    sget-object v6, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeNarrativeProvider;->newIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryFragment;->access$500(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/LibraryContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SeriesGroup"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordPresentLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method showSeries(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$100(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$100(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v2}, Lcom/amazon/kcp/library/LibraryFragment;->access$500(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/library/LibraryFragment$2$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/library/LibraryFragment$2$2;-><init>(Lcom/amazon/kcp/library/LibraryFragment$2;)V

    sget-object v4, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-static {v1, p1, v2, v3, v4}, Lcom/amazon/kcp/library/SeriesScreenlet;->newIntent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryFragment;->access$500(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/LibraryContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "SeriesGroup"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordPresentLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
