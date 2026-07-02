.class public Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;
.super Ljava/lang/Object;
.source "LibraryItemCountProviderDelegator.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;


# instance fields
.field private libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private final libraryFragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field private final libraryItemChangedListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryItemChangedListener:Ljava/util/Set;

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryFragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->onAdapterDataChanged()V

    return-void
.end method

.method private onAdapterDataChanged()V
    .locals 5

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->getItemCount()I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryItemChangedListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryItemChangedListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;

    .line 68
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryFragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 69
    invoke-interface {v3}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryFragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 70
    invoke-interface {v4}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v4

    .line 68
    invoke-interface {v2, v3, v4, v0}, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;->onItemCountChanged(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bindLibraryAdapterFragment(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "TT;>;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    .line 56
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator$1;-><init>(Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;)V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->setAdapterFragmentListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getList()Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->libraryItemChangedListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
