.class public Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;
.super Lcom/amazon/kcp/reader/ui/BookLayout;
.source "GraphicalHighlightLayout.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/BookLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected createGestureDetector()Lcom/amazon/kcp/reader/ReaderGestureDetector;
    .locals 7

    .line 37
    new-instance v6, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 41
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v4

    .line 42
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsPinchToChangeFontSize()Z

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ReaderNavigator;ZZ)V

    return-object v6
.end method

.method protected getMagnifyingGlassStubResId()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->pdf_magnifying_glass_vertical_stub:I

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->pdf_magnifying_glass_horizontal_stub:I

    :goto_1
    return v0
.end method

.method protected getViewForMagnification()Landroid/view/View;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->magnified_content_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    check-cast v0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->onHover(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->info_card_widget_stub:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->info_card_widget_stub_inflated:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 85
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onMeasure(II)V

    return-void
.end method

.method public populateGestureFactory(Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;)V
    .locals 0

    return-void
.end method
