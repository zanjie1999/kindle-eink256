.class public Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;
.super Ljava/lang/Object;
.source "HighlightDecorationProvider.java"

# interfaces
.implements Lcom/amazon/krf/platform/ContentDecorationDataProvider;


# static fields
.field private static final HIGHLIGHT_BORDER_RADIUS:F = 0.0f

.field private static final HIGHLIGHT_BORDER_WIDTH:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final INVALID_SHORT_POSITION:I

.field private final annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

.field private contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

.field private final ghlCornerRadius:I

.field private final ghlStrokeWidth:I

.field private final krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->INVALID_SHORT_POSITION:I

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 62
    iput-object p2, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 64
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 68
    sget p2, Lcom/amazon/kindle/renderingmodule/R$dimen;->graphical_highlight_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->ghlStrokeWidth:I

    .line 69
    sget p2, Lcom/amazon/kindle/renderingmodule/R$integer;->graphical_highlight_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->ghlCornerRadius:I

    return-void
.end method

.method private getAllHighlightsBetweenShortPositions(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object v1

    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    .line 204
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getHighlightDecorationStyle(II)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getTextColor()I

    move-result v2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getHighlightDecorationStyles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createContentDecorationStyle(IIIFF)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->addHighlightDecorationStyle(Ljava/lang/String;Lcom/amazon/krf/platform/ContentDecorationStyle;)V

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getHighlightDecorationStyles()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/ContentDecorationStyle;

    return-object p1
.end method

.method private getHighlightDecorationStyle(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILjava/lang/String;)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 3

    .line 290
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    .line 292
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationSelectionType(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    .line 296
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getHighlightDecorationStyles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getHighlightColor(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 302
    iget-object p2, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    iget v0, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->ghlStrokeWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->ghlCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createGraphicalHighlightStyle(IFF)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p2

    goto :goto_1

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p2, p3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createContentDecorationStyle(II)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_2
    iget-object p3, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->addHighlightDecorationStyle(Ljava/lang/String;Lcom/amazon/krf/platform/ContentDecorationStyle;)V

    .line 313
    :cond_3
    iget-object p2, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getHighlightDecorationStyles()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/ContentDecorationStyle;

    return-object p1
.end method

.method private getHighlightDecorations(III)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->getAllHighlightsBetweenShortPositions(II)Ljava/util/List;

    move-result-object p1

    .line 187
    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->toContentDecoration(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getHighlightDecorationsByStyle(IIILcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->getAllHighlightsBetweenShortPositions(II)Ljava/util/List;

    move-result-object p1

    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 253
    invoke-static {p2}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-direct {p0, p2, p3, v1}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->getHighlightDecorationStyle(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILjava/lang/String;)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p4}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v2

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 265
    iget-object v3, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    goto :goto_1

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 268
    iget-object v3, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    :goto_1
    if-nez v2, :cond_3

    if-eqz p2, :cond_0

    .line 272
    :cond_3
    new-instance v3, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v3, v2, p2}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 273
    new-instance p2, Lcom/amazon/krf/platform/ContentDecoration;

    invoke-direct {p2, v3, v1}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)V

    .line 274
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getHighlightsFromAnnotationRendererFactory(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 114
    new-instance v2, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 117
    invoke-static {}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getRenderers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    .line 121
    invoke-interface {v3}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Highlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {v3, v1, v2, v4}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getContentDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    .line 130
    instance-of v5, v4, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;

    if-eqz v5, :cond_2

    .line 131
    check-cast v4, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;

    .line 132
    iget-object v5, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v5

    .line 133
    iget-object v6, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v6

    .line 134
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecoration;->getColor()I

    move-result v7

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;->getBorderColor()I

    move-result v4

    invoke-direct {p0, v7, v4}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->getHighlightDecorationStyle(II)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v4

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 137
    new-instance v7, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v7, v5, v6}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 138
    new-instance v5, Lcom/amazon/krf/platform/ContentDecoration;

    invoke-direct {v5, v7, v4}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)V

    .line 139
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private toContentDecoration(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 221
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 222
    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {v1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-direct {p0, v1, p2, v2}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->getHighlightDecorationStyle(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILjava/lang/String;)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 229
    iget-object v3, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getContentDecorationForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/krf/platform/ContentDecorationStyle;)Lcom/amazon/krf/platform/ContentDecoration;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    const-string v0, "HighlightDecorationProvider.getContentDecorations"

    const/4 v1, 0x1

    .line 74
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v2, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getTextColor()I

    move-result v2

    .line 79
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    long-to-int v4, v3

    .line 80
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v5

    long-to-int v3, v5

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    const/4 v4, 0x0

    :cond_0
    if-ne v3, v6, :cond_1

    const v3, 0x7fffffff

    .line 90
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v6

    sget-object v7, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 91
    invoke-direct {p0, v4, v3, v2}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->getHighlightDecorations(III)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0, v4, v3, v2, p2}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->getHighlightDecorationsByStyle(IIILcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->getHighlightsFromAnnotationRendererFactory(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 99
    sget-object p2, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->TAG:Ljava/lang/String;

    const-string v2, "Unable to draw highlights from KRX plugins"

    invoke-static {p2, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :goto_1
    invoke-static {v0, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public setContentDecorationListener(Lcom/amazon/krf/platform/ContentDecorationListener;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    return-void
.end method

.method public updateAnnotations(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 318
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getTextColor()I

    move-result v0

    .line 321
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAddedAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->toContentDecoration(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 322
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getRemovedAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->toContentDecoration(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 324
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    invoke-interface {v0, v1, p1}, Lcom/amazon/krf/platform/ContentDecorationListener;->onContentDecorationChanged(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method
