.class public Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;
.super Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;
.source "LavaMagazineLocationSeekerDecoration.java"


# instance fields
.field private context:Landroid/content/Context;

.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-void
.end method


# virtual methods
.method protected computeDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;
    .locals 5

    const/4 p2, 0x1

    sub-int/2addr p3, p2

    .line 50
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getChapterInfo(Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1, p3}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastPageLabel()Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    sget p1, Lcom/amazon/kindle/krl/R$string;->lava_magazine_page_label_text_in_fixed_mode:I

    goto :goto_1

    .line 59
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$string;->lava_magazine_page_label_text_in_reflowable_mode:I

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->context:Landroid/content/Context;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    aput-object v2, v3, p2

    const/4 p2, 0x2

    aput-object v0, v3, p2

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxProgress()Ljava/lang/Integer;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNLNText(Lcom/amazon/android/docviewer/KindleDocViewer;ILcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->NLN_TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->computeDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 85
    sget v1, Lcom/amazon/kindle/krl/R$layout;->lava_seek_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    const/4 v1, -0x1

    .line 86
    invoke-interface {v0, v1, v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->updateDimensions(II)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->setMinPosition(I)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v1

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 88
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->setMax(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LavaMagazineLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    return-object v0
.end method
