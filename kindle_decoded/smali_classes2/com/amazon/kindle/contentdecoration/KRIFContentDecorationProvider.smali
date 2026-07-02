.class public Lcom/amazon/kindle/contentdecoration/KRIFContentDecorationProvider;
.super Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;
.source "KRIFContentDecorationProvider.java"


# instance fields
.field annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 2

    .line 37
    invoke-direct {p0, p2}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/KRIFContentDecorationProvider;->annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 41
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/contentdecoration/HighlightDecorationProvider;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->addProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V

    .line 45
    new-instance v0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    .line 46
    new-instance v1, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->addProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V

    .line 47
    new-instance p1, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->addProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->addProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V

    .line 51
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p1

    if-nez p1, :cond_1

    .line 53
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/utils/LanguageUtils;->isTraditionalChinese(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    new-instance p1, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->addProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V

    .line 56
    :cond_0
    new-instance p1, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->addProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 2
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

    const-string v0, "KRIFContentDecorationProvider.getContentDecorations"

    const/4 v1, 0x1

    .line 63
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 67
    invoke-static {v0, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/KRIFContentDecorationProvider;->annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getContentDecorationListener()Lcom/amazon/krf/platform/ContentDecorationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Lcom/amazon/krf/platform/ContentDecorationListener;->onDecorationsInvalidated()V

    :cond_0
    return-void
.end method
