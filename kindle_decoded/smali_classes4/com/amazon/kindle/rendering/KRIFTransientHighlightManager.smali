.class Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;
.super Ljava/lang/Object;
.source "KRIFTransientHighlightManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field private krifView:Lcom/amazon/kindle/rendering/KRIFView;

.field selectionHandlerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 41
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 42
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->selectionHandlerMap:Landroid/util/SparseArray;

    return-void
.end method

.method private getPositionRangeForDecoration(Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;)Lcom/amazon/krf/platform/PositionRange;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 106
    new-instance v1, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v1, v0, p1}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    return-object v1
.end method

.method private getSelectionForDecoration(Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;)Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;
    .locals 2

    .line 112
    invoke-interface {p1}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getColor()I

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->selectionHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->createTextSelector(I)Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->selectionHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method updateTransientHighlights(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 7

    .line 46
    invoke-static {}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getRenderers()Ljava/util/List;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    .line 53
    invoke-interface {v2}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne v4, v5, :cond_0

    .line 54
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {v2, p1, p2, v4}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getContentDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    if-eqz v4, :cond_5

    .line 58
    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne v5, v6, :cond_5

    .line 59
    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 70
    :cond_2
    invoke-direct {p0, v4}, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->getSelectionForDecoration(Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;)Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 75
    :cond_3
    invoke-direct {p0, v4}, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->getPositionRangeForDecoration(Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;)Lcom/amazon/krf/platform/PositionRange;

    move-result-object v4

    .line 76
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_4

    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_4
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_5
    :goto_2
    sget-object v5, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->TAG:Ljava/lang/String;

    const-string v6, "Decoration provider for transient highlights is invalid"

    invoke-static {v5, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejected TransientHighlights decoration style is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejected TransientHighlights decoration start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejected TransientHighlights decoration end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 84
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->getInstance()Lcom/amazon/kcp/debug/IAIRInCSUtil;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/amazon/kcp/debug/IAIRInCSUtil;->emitPerfMarkerForUpdateTransientHighlights(Z)V

    goto/16 :goto_0

    .line 91
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->selectionHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_9

    .line 92
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->selectionHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;

    if-nez p1, :cond_8

    .line 94
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected that selectionHandlerMap contains null for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 98
    :cond_8
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 99
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->setSelectionRanges(Ljava/util/List;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method
