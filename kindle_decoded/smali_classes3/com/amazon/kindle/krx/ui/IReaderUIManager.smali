.class public interface abstract Lcom/amazon/kindle/krx/ui/IReaderUIManager;
.super Ljava/lang/Object;
.source "IReaderUIManager.java"


# virtual methods
.method public abstract applyContentDecorationSettingsInDocView()V
.end method

.method public abstract applyReaderBrightness(Landroid/view/Window;)V
.end method

.method public abstract changeDecorationProviderState(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V
.end method

.method public abstract closeComponentViewer()V
.end method

.method public abstract closePanels()V
.end method

.method public abstract createActionBarButtonTutorial(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createSurfaceOverReader()Landroid/view/ViewGroup;
.end method

.method public abstract createTextAndImageBrochureSlide(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;
.end method

.method public abstract flashOverlays()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getActionBarWidgetItems()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "+",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBookInfoButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
.end method

.method public abstract getContentDecorationSettingsProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCoverPanelClickListener()Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCurrentActivity()Landroid/content/Context;
.end method

.method public abstract getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
.end method

.method public abstract getCustomActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomWidget(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;
.end method

.method public abstract getGestureHandlerProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getInfoCards()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;
.end method

.method public abstract getPageMargin()Lcom/amazon/kindle/krx/reader/PageMargin;
.end method

.method public abstract getPositionRange(IIZ)Lcom/amazon/kindle/krx/reader/IPositionRange;
.end method

.method public abstract getSelectionWidgetItems()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTitleBarWidgetItems()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract isContinuousScrollEnabled()Z
.end method

.method public abstract isEventInMargin(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
.end method

.method public abstract isMrprDialogBeingShown()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
.end method

.method public abstract performPostReaderModeSwitchActions()V
.end method

.method public abstract refreshActionBarDecoration()V
.end method

.method public abstract refreshActionButtons()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
.end method

.method public abstract refreshGestureHandlerProviders()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract refreshPanel(Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract refreshReaderActionButtons()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract refreshReaderPanels()V
.end method

.method public abstract refreshSeekBar()V
.end method

.method public abstract refreshSeekBarTextViewsAndSecondaryProgress()V
.end method

.method public abstract refreshView()V
.end method

.method public abstract registerActionBarDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "+",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerBookInfoButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerContentDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
.end method

.method public abstract registerContentDecorationSettingsProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerCustomPanelProvider(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;)V
.end method

.method public abstract registerCustomWidgetProvider(Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidgetProvider;)V
.end method

.method public abstract registerGestureHandlerProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerInfoCardItemProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerInfoCardViewProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerPositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
.end method

.method public abstract registerSelectionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerSelectionPlayButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerTextSelectionPopUpUIProvider(Lcom/amazon/kindle/krx/ui/ITextSelectionPopUpUIProvider;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerTitleBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerTutorialProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
.end method

.method public abstract removeSurfaceOverReader(Landroid/view/ViewGroup;)V
.end method

.method public abstract requestShowChrome()V
.end method

.method public abstract setCoverPanelClickListener(Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setOverlaysVisible(ZZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPanelsInteractive(Z)Z
.end method

.method public abstract setReaderBottomMargin(I)V
.end method

.method public abstract showBrochure(Ljava/util/Collection;Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract showTutorial(Ljava/lang/String;)V
.end method
