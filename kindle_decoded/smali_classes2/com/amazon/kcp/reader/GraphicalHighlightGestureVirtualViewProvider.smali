.class public Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;
.super Ljava/lang/Object;
.source "GraphicalHighlightGestureVirtualViewProvider.java"

# interfaces
.implements Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;


# instance fields
.field private cachedVirtualViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final docView:Lcom/amazon/android/docviewer/KindleDocView;

.field private final gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

.field private oldEndPosition:I

.field private oldStartPosition:I

.field private final virtualViewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

.field private final wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->oldStartPosition:I

    .line 39
    iput v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->oldEndPosition:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->cachedVirtualViews:Ljava/util/List;

    .line 43
    check-cast p2, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    iput-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->virtualViewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    .line 46
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->reset()V

    .line 47
    iget-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->virtualViewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {p2, p0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->registerVirtualViewProvider(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)V

    .line 49
    iget-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 50
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->docView:Lcom/amazon/android/docviewer/KindleDocView;

    .line 53
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getVirtualViews(Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-nez p1, :cond_0

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->docView:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->docView:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->docView:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 70
    :cond_1
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    .line 74
    instance-of v3, v2, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isHighlightingSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    .line 75
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v3

    .line 76
    iget-object v4, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v4, v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 77
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v2

    .line 79
    iget v4, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->oldStartPosition:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->oldEndPosition:I

    if-ne v2, v4, :cond_2

    .line 80
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->cachedVirtualViews:Ljava/util/List;

    return-object p1

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->cachedVirtualViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 84
    iget-object v4, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v4, v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v5, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v5}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_4

    .line 89
    iget-object v6, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    .line 90
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v5, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-le v5, v2, :cond_3

    goto :goto_1

    .line 94
    :cond_3
    iget-object v5, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v5}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    .line 95
    iget-object v5, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v5}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v5

    goto :goto_0

    .line 98
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    .line 99
    new-instance v5, Lcom/amazon/kcp/reader/accessibility/VirtualView;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v10

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    invoke-direct {v7, v8, v9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v7, p1, v6}, Lcom/amazon/kcp/reader/accessibility/VirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    .line 103
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->cachedVirtualViews:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_5
    new-instance v4, Lcom/amazon/kcp/reader/accessibility/VirtualView;

    new-instance v5, Landroid/graphics/Rect;

    iget v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v9

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    invoke-direct {v5, v7, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_no_readable_text_on_page:I

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1, v6}, Lcom/amazon/kcp/reader/accessibility/VirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->cachedVirtualViews:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_2
    iput v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->oldEndPosition:I

    .line 112
    iput v3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->oldStartPosition:I

    .line 114
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    .line 117
    :cond_6
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;->cachedVirtualViews:Ljava/util/List;

    return-object p1
.end method

.method public onAccessibilityDisabled()V
    .locals 0

    return-void
.end method

.method public onAccessibilityEnabled()V
    .locals 0

    return-void
.end method
