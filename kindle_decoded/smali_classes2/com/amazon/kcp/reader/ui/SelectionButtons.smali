.class public abstract Lcom/amazon/kcp/reader/ui/SelectionButtons;
.super Landroid/widget/LinearLayout;
.source "SelectionButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected bottomMarkerInsetPix:I

.field private buttonsOnlyHeight:I

.field private colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

.field protected colorSelection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;",
            ">;"
        }
    .end annotation
.end field

.field protected customSelectionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;"
        }
    .end annotation
.end field

.field protected desiredLocation:Landroid/graphics/Rect;

.field protected firstLine:Landroid/graphics/Rect;

.field protected lastLine:Landroid/graphics/Rect;

.field protected markerBottom:Landroid/widget/ImageView;

.field private markerBounds:Landroid/graphics/Rect;

.field private markerDisabled:Z

.field private markerLayout:Landroid/graphics/Rect;

.field protected markerTop:Landroid/widget/ImageView;

.field private maxHeight:I

.field protected maxNumberOfDisplayedButtons:I

.field private maxWidth:I

.field protected mchlEnabled:Z

.field protected numVisibleButtons:I

.field protected overflowButtonSwap:I

.field private overflowIndexStart:I

.field protected position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

.field private readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

.field protected selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field protected selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

.field protected targetArea:Landroid/graphics/Rect;

.field protected topMarkerInsetPix:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerLayout:Landroid/graphics/Rect;

    .line 135
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 201
    iput p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttonsOnlyHeight:I

    .line 208
    iput p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxWidth:I

    .line 209
    iput p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxHeight:I

    .line 222
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->shouldShowHighlightButtons()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->mchlEnabled:Z

    const/4 v1, 0x0

    .line 224
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 225
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    .line 226
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    .line 227
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    const/4 v2, 0x3

    .line 229
    iput v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxNumberOfDisplayedButtons:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    .line 233
    iput v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxNumberOfDisplayedButtons:I

    .line 237
    :cond_0
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->customSelectionButtons:Ljava/util/List;

    .line 238
    iput p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->overflowIndexStart:I

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->selection_button_marker_top_inset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->selection_button_marker_bottom_inset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->colorSelection:Ljava/util/List;

    .line 248
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->mchlEnabled:Z

    if-eqz v0, :cond_1

    .line 249
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->values()[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge p2, v2, :cond_1

    aget-object v3, v0, p2

    .line 250
    new-instance v4, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;

    invoke-direct {v4, p1, v3}, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;-><init>(Landroid/content/Context;Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->colorSelection:Ljava/util/List;

    invoke-virtual {v4, p0, v3}, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->setView(Landroid/view/ViewGroup;Ljava/util/List;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 257
    :cond_1
    instance-of p2, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/amazon/kcp/reader/ReaderActivity;

    :cond_2
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-void
.end method

.method private setSelectedArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    sget-object v1, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 737
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 741
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    .line 742
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    .line 744
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    const/4 p1, 0x1

    return p1
.end method

.method private tryToSetSelectionArea(Ljava/util/Vector;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 806
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 807
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 809
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 811
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 812
    invoke-virtual {v2}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 815
    invoke-virtual {v2, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 816
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 818
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setSelectedArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method protected adjustToFitInBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 1049
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1050
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1053
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 1054
    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    add-int/2addr v2, v0

    .line 1055
    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_1

    sub-int/2addr v3, v0

    .line 1056
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1058
    :cond_1
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 1061
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_2

    .line 1062
    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    .line 1063
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, p2, :cond_3

    sub-int/2addr p2, v1

    .line 1064
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1066
    :cond_3
    :goto_1
    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected abstract buttonViewCount()I
.end method

.method public disableMarker()V
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1037
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerDisabled:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected abstract getButtonView(I)Landroid/view/View;
.end method

.method public getButtonsOnlyHeight()I
    .locals 1

    .line 1163
    iget v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttonsOnlyHeight:I

    return v0
.end method

.method getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 3

    .line 360
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 362
    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_0

    .line 363
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 364
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-object v0
.end method

.method public getCurrentPositionRelativeToSelection()Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    return-object v0
.end method

.method protected getDocViewerMargins(Landroid/app/Activity;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 994
    instance-of v1, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_0

    .line 995
    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 996
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    move-object v0, p1

    :cond_0
    if-nez v0, :cond_1

    .line 1000
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p1, -0x1

    invoke-direct {v0, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1001
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1002
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1003
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1004
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    return-object v0
.end method

.method protected getInfoCardRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 1011
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getInfoCardController()Lcom/amazon/kcp/reader/InfoCardController;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 1015
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/InfoCardController;->getInfoCardContainer()Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 1021
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1023
    iget-boolean v2, v0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isOnBottom:Z

    if-eqz v2, :cond_3

    .line 1024
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1025
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getDesiredOnScreenHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1027
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 1028
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getDesiredOnScreenHeight()I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-object v1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1181
    iget v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1172
    iget v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxWidth:I

    return v0
.end method

.method protected getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 1076
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectionBottomAdjustedForAccessibilityControl(Landroid/app/Activity;Landroid/graphics/Rect;)I
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 971
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_1

    .line 972
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 973
    sget v1, Lcom/amazon/kindle/krl/R$id;->accessible_selection_right_increase:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 976
    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int v0, p2, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method protected getSelectionMethod()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;
    .locals 1

    .line 720
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->TOUCH:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    return-object v0
.end method

.method public handleOnClick(Landroid/view/View;)Z
    .locals 3

    .line 389
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->mchlEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->colorSelection:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    if-eqz v0, :cond_0

    .line 392
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    return v1

    .line 397
    :cond_0
    const-class v0, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;->isOverflowButton()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0

    .line 400
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->customSelectionButtons:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 401
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;->getCustomButtonID()I

    move-result p1

    .line 402
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->customSelectionButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected layoutButtons(III)V
    .locals 3

    .line 628
    iget-boolean p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->mchlEnabled:Z

    if-eqz p3, :cond_0

    .line 630
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->colorSelection:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;

    .line 631
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->getButton()Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    .line 634
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    .line 636
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/widget/ImageButton;->layout(IIII)V

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 645
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttonViewCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 646
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getButtonView(I)Landroid/view/View;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 650
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    .line 651
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    .line 653
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    move p1, v1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public layoutOnScreen(IIII)V
    .locals 11

    .line 828
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 829
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 831
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p3

    .line 832
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getDocViewerMargins(Landroid/app/Activity;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p4

    .line 837
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getSelectionBottomAdjustedForAccessibilityControl(Landroid/app/Activity;Landroid/graphics/Rect;)I

    move-result p3

    .line 842
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getInfoCardRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 847
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 848
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 852
    :goto_1
    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    add-int/2addr v7, v8

    .line 856
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-static {p4, v6}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr v8, p4

    .line 859
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    const/16 v6, 0x8

    if-eqz p4, :cond_4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    .line 860
    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, p2

    iget v10, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr v9, v10

    sub-int/2addr p4, v9

    iget-object v9, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    .line 861
    invoke-virtual {v9, v2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetY(Z)I

    move-result v9

    add-int/2addr p4, v9

    if-lt p4, v7, :cond_4

    .line 864
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 869
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p2, p4

    iget p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr p2, p4

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 870
    invoke-virtual {v0, v2, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 873
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 875
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 876
    sget-object p2, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Above:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    goto/16 :goto_5

    .line 879
    :cond_4
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    .line 880
    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p2

    iget v7, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    sub-int/2addr p4, v7

    add-int/2addr p4, p3

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    .line 881
    invoke-virtual {v7, v4}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetY(Z)I

    move-result v4

    add-int/2addr p4, v4

    if-gt p4, v8, :cond_5

    .line 884
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 889
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p2, p4

    iget p4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    sub-int/2addr p2, p4

    add-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 890
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 893
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 895
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 896
    sget-object p2, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Below:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    goto :goto_5

    .line 900
    :cond_5
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 904
    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    iget p4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x4

    .line 905
    iget p4, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    .line 907
    iput p3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p2

    .line 908
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p3, p2

    iget p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v3, :cond_7

    .line 913
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 914
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eqz v5, :cond_6

    .line 916
    iget p3, v3, Landroid/graphics/Rect;->bottom:I

    iput p3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p2

    .line 917
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 919
    :cond_6
    iget p3, v3, Landroid/graphics/Rect;->top:I

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p2

    .line 920
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 923
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->disableMarker()V

    .line 926
    :cond_7
    sget-object p2, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    move p3, p4

    .line 929
    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/amazon/kindle/krl/R$dimen;->selection_buttons_x_margin:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 932
    div-int/lit8 p4, p1, 0x2

    sub-int/2addr p3, p4

    iput p3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p3

    .line 933
    iput p1, v0, Landroid/graphics/Rect;->right:I

    if-ge p3, p2, :cond_8

    sub-int/2addr p2, p3

    add-int/2addr p3, p2

    .line 940
    iput p3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    .line 941
    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_8
    add-int p4, p1, p2

    .line 942
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-le p4, v2, :cond_9

    add-int/2addr p2, p1

    sub-int/2addr p2, v2

    sub-int/2addr p3, p2

    .line 945
    iput p3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    .line 946
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 950
    :cond_9
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->adjustToFitInBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 952
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    .line 954
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerDisabled:Z

    if-eqz p1, :cond_a

    .line 955
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->handleOnClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 378
    sget-object p1, Lcom/amazon/kcp/reader/ui/SelectionButtons;->TAG:Ljava/lang/String;

    const-string v0, "Handling a click on an unexpected view"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .line 411
    const-class p3, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 412
    check-cast p2, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;

    .line 413
    invoke-interface {p2}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonView;->isOverflowButton()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->customSelectionButtons:Ljava/util/List;

    if-nez p2, :cond_1

    .line 420
    sget-object p1, Lcom/amazon/kcp/reader/ui/SelectionButtons;->TAG:Ljava/lang/String;

    const-string p2, "Null custom selection buttons. Cannot show context menu"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 424
    :cond_1
    iget p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->overflowButtonSwap:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 425
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p3, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p3, v1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getOverflowMenuText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 427
    sget-object v2, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 428
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$4;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kcp/reader/ui/SelectionButtons$4;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 436
    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 439
    :goto_0
    iget p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->overflowIndexStart:I

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 440
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 441
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v1

    .line 442
    sget-object v2, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->HIDDEN:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    if-eq v1, v2, :cond_4

    .line 443
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getOverflowMenuText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 444
    sget-object v4, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    if-ne v1, v4, :cond_3

    .line 445
    new-instance v1, Lcom/amazon/kcp/reader/ui/SelectionButtons$5;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$5;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_2

    .line 453
    :cond_3
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 459
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 460
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$string;->speak_selection_overflow_title:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 545
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    sget-object v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    if-ne p1, v0, :cond_7

    .line 546
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, p2, :cond_8

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, p4, :cond_8

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, p3, :cond_8

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq p1, p5, :cond_1

    goto/16 :goto_4

    .line 564
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 565
    sget-object v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$6;->$SwitchMap$com$amazon$kcp$reader$ui$SelectionButtons$Position:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    sub-int p1, p4, p2

    .line 581
    div-int/2addr p1, v2

    sub-int v0, p5, p3

    .line 583
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr v0, v1

    .line 584
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    :goto_0
    move-object v4, v1

    const/4 v1, 0x0

    goto :goto_3

    .line 588
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SelectionButtons not laid out correctly"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 574
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    move p1, v0

    .line 575
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    sub-int/2addr v0, v1

    .line 577
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    move-object v4, v1

    move v1, v0

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    .line 567
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    move p1, v0

    :goto_2
    sub-int v0, p5, p3

    .line 569
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr v0, v1

    .line 570
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    goto :goto_0

    .line 592
    :goto_3
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerLayout:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v2

    sub-int/2addr p1, v6

    iput p1, v5, Landroid/graphics/Rect;->left:I

    .line 593
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerLayout:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 594
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 595
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerLayout:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 598
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBounds:Landroid/graphics/Rect;

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 599
    iput v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p2

    .line 600
    iput p4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    .line 601
    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 603
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerLayout:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->adjustToFitInBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 605
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerLayout:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 610
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 614
    invoke-virtual {p0, v3, v1, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->layoutButtons(III)V

    :cond_7
    return-void

    .line 555
    :cond_8
    :goto_4
    sget-object p1, Lcom/amazon/kcp/reader/ui/SelectionButtons;->TAG:Ljava/lang/String;

    const-string p2, "Did not pass in the desired location from getDesiredLocation(). If you are not running hierarchy viewer this is a bug!"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 466
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->updateButtons()V

    .line 467
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setupPopupButtonBackgrounds()V

    .line 469
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 470
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 478
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttonViewCount()I

    move-result v5

    const/16 v6, 0x8

    const/high16 v7, -0x80000000

    if-ge v2, v5, :cond_1

    .line 479
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getButtonView(I)Landroid/view/View;

    move-result-object v5

    .line 481
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v6, :cond_0

    .line 482
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 483
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 482
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 484
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v3, v6

    .line 485
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 486
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->mchlEnabled:Z

    if-eqz v2, :cond_3

    .line 491
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->colorSelection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;

    .line 492
    iget-object v8, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {v5, v8}, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v8

    sget-object v9, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    if-ne v8, v9, :cond_2

    .line 493
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton;->getButton()Lcom/amazon/kcp/reader/ui/buttons/HighlightColorCustomSelectionButton$HighlightImageButton;

    move-result-object v5

    .line 494
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v8

    if-eq v8, v6, :cond_2

    .line 495
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 496
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 495
    invoke-virtual {v5, v8, v9}, Landroid/widget/ImageButton;->measure(II)V

    .line 497
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v3, v8

    .line 498
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 499
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_1

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 511
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    sget-object v1, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Below:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    .line 512
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    .line 513
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    :goto_2
    sub-int/2addr v0, v1

    add-int/2addr v0, v4

    .line 516
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, v4, p1, p2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setValuesForLayout(III)V

    .line 518
    invoke-virtual {p0, v3, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 296
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-ne v0, v1, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 301
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne v1, v2, :cond_1

    .line 302
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$1;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object p1

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne p1, v1, :cond_2

    .line 310
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$2;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 320
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p1, v1, :cond_3

    .line 321
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 323
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onSelectionAreaChanged()V
    .locals 0

    return-void
.end method

.method protected onSelectionStateChanged()V
    .locals 7

    .line 752
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->disableMarker()V

    .line 759
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    .line 760
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v2

    .line 762
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 763
    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 765
    :goto_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v4

    const-string v5, "Selection"

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 768
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_2

    sget-object v6, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v6, :cond_2

    sget-object v6, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne v2, v6, :cond_3

    :cond_2
    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_5

    .line 771
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 772
    invoke-interface {v3, v5}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    .line 773
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 774
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 777
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v1

    .line 778
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v0

    const-string v2, "Lookup"

    .line 775
    invoke-interface {v3, v5, v2, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    const/4 v0, 0x0

    .line 781
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 783
    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->tryToSetSelectionArea(Ljava/util/Vector;)Z

    goto :goto_1

    .line 785
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    if-eqz v3, :cond_6

    .line 786
    invoke-interface {v3, v5}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    .line 788
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-void
.end method

.method public setCustomButtons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->sortCustomButtonsByPriority(Ljava/util/List;)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setUpImageButtons(Ljava/util/List;)V

    .line 338
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->customSelectionButtons:Ljava/util/List;

    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ui/ObjectSelectionView;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 282
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz p1, :cond_1

    .line 285
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 288
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->onSelectionStateChanged()V

    .line 291
    :cond_1
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    return-void
.end method

.method protected abstract setUpButton(IILcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;)V
.end method

.method protected abstract setUpImageButtons(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract setUpOverflowButton()V
.end method

.method protected setValuesForLayout(III)V
    .locals 0

    .line 532
    iput p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttonsOnlyHeight:I

    .line 537
    iput p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxWidth:I

    .line 538
    iput p3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxHeight:I

    return-void
.end method

.method protected abstract setupPopupButtonBackgrounds()V
.end method

.method protected shouldShowHighlightButtons()Z
    .locals 2

    .line 265
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->mchl_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected sortCustomButtonsByPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;)V"
        }
    .end annotation

    .line 346
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method protected updateButtons()V
    .locals 8

    .line 674
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 675
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->customSelectionButtons:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 676
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_0

    goto :goto_2

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getSelectionMethod()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionMethod()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 685
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 686
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 687
    invoke-interface {v5, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v6

    .line 689
    sget-object v7, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->HIDDEN:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    if-ne v6, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 696
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxNumberOfDisplayedButtons:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 697
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setUpOverflowButton()V

    throw v1

    .line 700
    :cond_2
    invoke-virtual {p0, v4, v3, v5, v6}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setUpButton(IILcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;)V

    throw v1

    .line 705
    :cond_3
    iput v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->overflowIndexStart:I

    .line 706
    iput v3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->numVisibleButtons:I

    .line 709
    :goto_1
    iget v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxNumberOfDisplayedButtons:I

    if-ge v3, v0, :cond_4

    .line 710
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getButtonView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
