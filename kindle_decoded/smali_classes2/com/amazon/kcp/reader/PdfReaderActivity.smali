.class public Lcom/amazon/kcp/reader/PdfReaderActivity;
.super Lcom/amazon/kcp/reader/ReaderActivity;
.source "PdfReaderActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/reader/PdfReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/PdfReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;-><init>()V

    return-void
.end method

.method private isActionBarEnabled()Z
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->pdf_action_bar_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0
.end method

.method protected getCustomMenuType()Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPdfBookLayout()Lcom/amazon/kcp/reader/ui/PdfLayout;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    check-cast v0, Lcom/amazon/kcp/reader/ui/PdfLayout;

    return-object v0
.end method

.method protected newCustomMenuController()Lcom/amazon/android/menu/AndroidCustomMenuController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 69
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/PdfLayout;->newInstance(Lcom/amazon/kcp/reader/PdfReaderActivity;)Lcom/amazon/kcp/reader/ui/PdfLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onBookOptionsPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget p1, Lcom/amazon/kindle/krl/R$id;->reader_drawer_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7

    .line 90
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 94
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBeginningPosition()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageLabelFromPageIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookEndPosition()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageLabelFromPageIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    sget v4, Lcom/amazon/kindle/krl/R$string;->page_title:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageStartPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageLabelFromPageIndex(I)Ljava/lang/String;

    move-result-object p1

    .line 100
    sget v0, Lcom/amazon/kindle/krl/R$id;->current_location_text:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/krl/R$string;->page_current:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onResume()V

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/reader/PdfReaderActivity;->isActionBarEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 46
    invoke-super {p0, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->setActionBarVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onSearchRequested()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/PdfReaderActivity;->getPdfBookLayout()Lcom/amazon/kcp/reader/ui/PdfLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlays(IZ)Z

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/PdfReaderActivity;->getPdfBookLayout()Lcom/amazon/kcp/reader/ui/PdfLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    return v1
.end method

.method public populateSupportedFeatureSet()V
    .locals 5

    .line 53
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BackNavigation:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$bool;->pdf_bookmarks_supported:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 57
    sget-object v4, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    if-eqz v3, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/features/BookmarkActivityFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 62
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 63
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 64
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Search:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActionBarVisibility(Z)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/amazon/kcp/reader/PdfReaderActivity;->isActionBarEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->setActionBarVisibility(Z)V

    return-void
.end method

.method public setupCustomButtons()V
    .locals 0

    return-void
.end method
