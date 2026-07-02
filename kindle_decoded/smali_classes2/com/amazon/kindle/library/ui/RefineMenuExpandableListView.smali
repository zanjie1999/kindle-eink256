.class public Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "RefineMenuExpandableListView.java"


# instance fields
.field private final libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

.field private final libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/library/LibraryFilterStateManager;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView$1;-><init>(Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;->libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    .line 45
    iput-object p2, p0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 46
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 56
    new-instance v0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView$2;-><init>(Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;->libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->registerListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;->libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->deregisterListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
