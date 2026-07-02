.class public abstract Lcom/amazon/kedu/flashcards/views/LoadableView;
.super Landroid/widget/ViewSwitcher;
.source "LoadableView.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;
.implements Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Loadable:Ljava/lang/Object;",
        ">",
        "Landroid/widget/ViewSwitcher;",
        "Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener<",
        "T",
        "Loadable;",
        ">;",
        "Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;"
    }
.end annotation


# instance fields
.field private expandabilityChangedListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private expandable:Z

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private loader:Lcom/amazon/kedu/flashcards/loadable/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kedu/flashcards/loadable/Loader<",
            "T",
            "Loadable;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loading:Z

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandabilityChangedListeners:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandable:Z

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/LoadableView;->initialize(Ljava/lang/Integer;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loading:Z

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandabilityChangedListeners:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandable:Z

    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/LoadableView;->initialize(Ljava/lang/Integer;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loading:Z

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandabilityChangedListeners:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandable:Z

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/LoadableView;->initialize(Ljava/lang/Integer;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Ljava/lang/Integer;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/R$styleable;->LoadableView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 55
    :try_start_0
    sget v0, Lcom/amazon/kedu/flashcards/R$styleable;->LoadableView_layoutResource:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    throw p1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private setLoading(Z)V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loading:Z

    if-eq v0, p1, :cond_0

    .line 127
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loading:Z

    .line 128
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addExpandabilityChangedListener(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandabilityChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;->setLoading(Z)V

    .line 81
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loader:Lcom/amazon/kedu/flashcards/loadable/Loader;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, p0}, Lcom/amazon/kedu/flashcards/loadable/Loader;->removeOnViewLoadedListener(Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;)V

    .line 84
    iput-object v2, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loader:Lcom/amazon/kedu/flashcards/loadable/Loader;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 89
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 90
    iput-object v2, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->future:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public execute(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loader:Lcom/amazon/kedu/flashcards/loadable/Loader;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->future:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public execute(Ljava/util/concurrent/ExecutorService;Lcom/amazon/kedu/flashcards/loadable/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/amazon/kedu/flashcards/loadable/Loader<",
            "T",
            "Loadable;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/views/LoadableView;->setLoader(Lcom/amazon/kedu/flashcards/loadable/Loader;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/LoadableView;->execute(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Loadable;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/LoadableView;->setLoading(Z)V

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;->setLoading(Z)V

    return-void
.end method

.method public removeExpandabilityChancedListener(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandabilityChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setExpandability(Z)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandable:Z

    if-eq p1, v0, :cond_0

    .line 136
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandable:Z

    .line 137
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandabilityChangedListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;

    .line 139
    invoke-interface {v0, p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;->onExpandabilityChanged(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoader(Lcom/amazon/kedu/flashcards/loadable/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/flashcards/loadable/Loader<",
            "T",
            "Loadable;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/LoadableView;->cancel()V

    .line 73
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->loader:Lcom/amazon/kedu/flashcards/loadable/Loader;

    .line 74
    invoke-virtual {p1, p0}, Lcom/amazon/kedu/flashcards/loadable/Loader;->addOnViewLoadedListener(Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;)V

    return-void
.end method

.method public shouldExpand()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableView;->expandable:Z

    return v0
.end method
