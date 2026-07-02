.class public Lcom/amazon/kindle/rendering/BookMarginalDataHandler;
.super Ljava/lang/Object;
.source "BookMarginalDataHandler.java"

# interfaces
.implements Lcom/amazon/kindle/yj/IMarginalContentProviderContext;
.implements Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;


# instance fields
.field private krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field private krifView:Lcom/amazon/kindle/rendering/KRIFView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 38
    iput-object p2, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    return-void
.end method


# virtual methods
.method public addAdditionalFooterStringsFromProviders(Ljava/util/List;Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    return-object p1

    .line 164
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->addAdditionalFooterStringsFromProviders(Ljava/util/List;Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Landroid/graphics/Paint;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    return-void
.end method

.method public getBookEndPosition()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookEndPosition()I

    move-result v0

    return v0
.end method

.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    return-object v0
.end method

.method public getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 182
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getDocView()Landroid/view/View;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    return-object v0
.end method

.method public getFooterContentProvider()Lcom/amazon/android/docviewer/mobi/FooterContentProvider;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getFooterContentProvider()Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->setMarginalContentProviderContext(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    return-object v0
.end method

.method public getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v0

    return-object v0
.end method

.method public getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    return-object v0
.end method

.method public getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    return-object v0
.end method

.method public getNextChapterPosition(I)I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    check-cast v0, Lcom/amazon/android/docviewer/IBookTOC;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IBookTOC;->getNextChapterPosition(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getNumWordsBetweenPositions(III)I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 120
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getNumWordsBetweenPositions(III)I

    move-result p1

    return p1
.end method

.method public getPageEndPosition()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageEndPosition()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPageStartPosition()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageStartPosition()I

    move-result v0

    return v0
.end method

.method public getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettings()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public hasTOC()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->hasTOC()Z

    move-result v0

    return v0
.end method

.method public performFooterGestureActionsFromProviders()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 256
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->performFooterGestureActionsFromProviders()Z

    move-result v0

    return v0
.end method

.method public reloadCurrentPageMarginals()V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->getDocView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->reloadCurrentPageMarginals()V

    return-void
.end method

.method public userLocationFromPosition(I)I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 128
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->userLocationFromPosition(I)I

    move-result p1

    return p1
.end method
