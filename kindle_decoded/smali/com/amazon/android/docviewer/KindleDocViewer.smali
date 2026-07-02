.class public interface abstract Lcom/amazon/android/docviewer/KindleDocViewer;
.super Ljava/lang/Object;
.source "KindleDocViewer.java"


# virtual methods
.method public abstract addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
.end method

.method public abstract addPostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V
.end method

.method public abstract applyContentDecorationSettings()V
.end method

.method public abstract applySettingsImmediately()Z
.end method

.method public abstract calculateIsOpeningToSrl()Z
.end method

.method public abstract checkAndEnableAccessibilityPageTurnSupport()V
.end method

.method public abstract closeComponentViewer()V
.end method

.method public abstract closeDocView()V
.end method

.method public abstract closeDocument()V
.end method

.method public abstract closeThumbnailManager()V
.end method

.method public abstract createDocView(Landroid/content/Context;)V
.end method

.method public abstract createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;
.end method

.method public abstract createPositionRange(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/android/docviewer/IPositionRange;
.end method

.method public abstract createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
.end method

.method public abstract currentViewContainsRange(Lcom/amazon/android/docviewer/IPositionRange;)Z
.end method

.method public abstract enablePageCurl(Z)V
.end method

.method public abstract getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;
.end method

.method public abstract getAtLocationText(I)Ljava/lang/String;
.end method

.method public abstract getBackDepth()J
.end method

.method public abstract getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
.end method

.method public abstract getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;
.end method

.method public abstract getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
.end method

.method public abstract getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getContentAvailabilityController()Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;
.end method

.method public abstract getContentViewBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getContinuousScrollEnabled()Z
.end method

.method public abstract getCoverImageUrl(Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
.end method

.method public abstract getDefaultFontFace()Ljava/lang/String;
.end method

.method public abstract getDocView()Lcom/amazon/android/docviewer/KindleDocView;
.end method

.method public abstract getDocument()Lcom/amazon/android/docviewer/KindleDoc;
.end method

.method public abstract getElementsOnCurrentPage(I)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstLandingPosition()J
.end method

.method public abstract getFontSize()I
.end method

.method public abstract getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;
.end method

.method public abstract getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;
.end method

.method public abstract getGraphicDimensionsForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;
.end method

.method public abstract getGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
.end method

.method public abstract getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
.end method

.method public abstract getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;
.end method

.method public abstract getLineSpacing()I
.end method

.method public abstract getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
.end method

.method public abstract getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
.end method

.method public abstract getPageLabelProviderForSearch()Lcom/amazon/android/docviewer/IPageLabelProvider;
.end method

.method public abstract getPageSwipePlayer()Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;
.end method

.method public abstract getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II)",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPortraitSizeForGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
.end method

.method public abstract getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
.end method

.method public abstract getReadingRulerEnabled()Z
.end method

.method public abstract getScrollToPositionListener()Lcom/amazon/android/docviewer/IScrollToPositionListener;
.end method

.method public abstract getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;
.end method

.method public abstract getSearchLocationText(II)Ljava/lang/String;
.end method

.method public abstract getSearchResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelector()Lcom/amazon/android/docviewer/IObjectSelector;
.end method

.method public abstract getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
.end method

.method public abstract getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;
.end method

.method public abstract getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;
.end method

.method public abstract getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;
.end method

.method public abstract getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;
.end method

.method public abstract hasActionableFooterFromProviders()Z
.end method

.method public abstract isAccessibilityPageTurnSupportEnabled()Z
.end method

.method public abstract isChapterNavigationSupported()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isDoneWithInitialDraw()Z
.end method

.method public abstract isFontSizeChangeSupported()Z
.end method

.method public abstract isFontTypeChangeSupported()Z
.end method

.method public abstract isImageViewEnabled()Z
.end method

.method public abstract isJpVertContent()Z
.end method

.method public abstract isKindleIllustratedSupported()Z
.end method

.method public abstract isOpeningToSrl()Z
.end method

.method public abstract loadAnnotations()V
.end method

.method public abstract markBatchSettingsChange(Z)V
.end method

.method public abstract navigateBack()V
.end method

.method public abstract navigateToBeginning()V
.end method

.method public abstract navigateToCover()V
.end method

.method public abstract navigateToLocation(I)V
.end method

.method public abstract navigateToNextChapter()V
.end method

.method public abstract navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
.end method

.method public abstract navigateToPercent(D)V
.end method

.method public abstract navigateToPosition(I)V
.end method

.method public abstract navigateToPosition(IZ)V
.end method

.method public abstract navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
.end method

.method public abstract navigateToPreviousChapter()V
.end method

.method public abstract navigateToTOC()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onContrastLevelChanged()V
.end method

.method public abstract onInitialDraw()V
.end method

.method public abstract onRenderComplete()V
.end method

.method public abstract performFooterGestureActionsFromProviders()Z
.end method

.method public abstract refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
.end method

.method public abstract refreshDocView()V
.end method

.method public abstract refreshDocViewAsync()V
.end method

.method public abstract refreshFooter()V
.end method

.method public abstract refreshHeader()V
.end method

.method public abstract refreshSearchResults()V
.end method

.method public abstract removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
.end method

.method public abstract removePostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V
.end method

.method public abstract saveLocalBookState()V
.end method

.method public abstract search(Ljava/lang/String;)I
.end method

.method public abstract setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
.end method

.method public abstract setColumnCount(IZ)V
.end method

.method public abstract setContinuousScrollEnabled(ZZ)V
.end method

.method public abstract setDefaultFontFace(Ljava/lang/String;)Z
.end method

.method public abstract setFontConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setFontSize(I)V
.end method

.method public abstract setForceDisableJustification(Z)V
.end method

.method public abstract setInitialOrientation(I)V
.end method

.method public abstract setKindleIllustratedAutoPlayAnimations(Z)V
.end method

.method public abstract setKindleIllustratedSettings(ZLcom/amazon/android/docviewer/KindleDocColorMode;)V
.end method

.method public abstract setLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;)V
.end method

.method public abstract setLetterboxingMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)V
.end method

.method public abstract setLineSpacing(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V
.end method

.method public abstract setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V
.end method

.method public abstract setReadingRulerColor(Lcom/amazon/ksdk/presets/Color;)V
.end method

.method public abstract setReadingRulerEnabled(Z)V
.end method

.method public abstract setReadingRulerOpacity(F)V
.end method

.method public abstract setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V
.end method

.method public abstract setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)V
.end method

.method public abstract setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V
.end method

.method public abstract setSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSearchResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)V
.end method

.method public abstract setShowPageOnEnter(Z)V
.end method

.method public abstract setShowPageOnExit(Z)V
.end method

.method public abstract setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V
.end method

.method public abstract setTransitionDuration(I)V
.end method

.method public abstract supportsPageLabels()Z
.end method

.method public abstract supportsTouchAccessibility()Z
.end method

.method public abstract supportsZoom()Z
.end method

.method public abstract suppressLocations()Z
.end method

.method public abstract toggleFooter()V
.end method

.method public abstract windowSizeChanged()V
.end method
