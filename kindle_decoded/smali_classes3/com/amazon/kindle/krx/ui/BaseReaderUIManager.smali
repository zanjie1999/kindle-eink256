.class public Lcom/amazon/kindle/krx/ui/BaseReaderUIManager;
.super Ljava/lang/Object;
.source "BaseReaderUIManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IReaderUIManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyContentDecorationSettingsInDocView()V
    .locals 1

    .line 409
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public applyReaderBrightness(Landroid/view/Window;)V
    .locals 0

    .line 379
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public changeDecorationProviderState(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V
    .locals 0

    .line 233
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public closeComponentViewer()V
    .locals 1

    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public closePanels()V
    .locals 1

    .line 367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createActionBarButtonTutorial(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;
    .locals 0

    .line 308
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createSurfaceOverReader()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createTextAndImageBrochureSlide(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;
    .locals 0

    .line 428
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public flashOverlays()V
    .locals 1

    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionBarWidgetItems()Ljava/util/Collection;
    .locals 1
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

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
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

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBookInfoButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
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

    .line 446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentDecorationSettingsProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
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

    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCoverPanelClickListener()Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;
    .locals 1

    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentActivity()Landroid/content/Context;
    .locals 1

    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
    .locals 1

    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCustomActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
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

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCustomWidget(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;
    .locals 0

    .line 216
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getGestureHandlerProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
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

    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInfoCards()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
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

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageMargin()Lcom/amazon/kindle/krx/reader/PageMargin;
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPositionRange(IIZ)Lcom/amazon/kindle/krx/reader/IPositionRange;
    .locals 0

    .line 124
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSelectionWidgetItems()Ljava/util/Collection;
    .locals 1
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

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTitleBarWidgetItems()Ljava/util/Collection;
    .locals 1
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

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isContinuousScrollEnabled()Z
    .locals 1

    .line 482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEventInMargin(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 130
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isMrprDialogBeingShown()Z
    .locals 1

    .line 470
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 0

    .line 464
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public performPostReaderModeSwitchActions()V
    .locals 1

    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshActionBarDecoration()V
    .locals 1

    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshActionButtons()V
    .locals 1

    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public refreshGestureHandlerProviders()V
    .locals 1

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshPanel(Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V
    .locals 0

    .line 281
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public refreshReaderActionButtons()V
    .locals 1

    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshReaderPanels()V
    .locals 1

    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshSeekBar()V
    .locals 1

    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshSeekBarTextViewsAndSecondaryProgress()V
    .locals 1

    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshView()V
    .locals 1

    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public registerActionBarDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 0
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

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
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

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerBookInfoButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
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

    .line 440
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerContentDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
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

    .line 192
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 198
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerContentDecorationSettingsProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 385
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 0
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

    .line 136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerCustomPanelProvider(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;)V
    .locals 0

    .line 257
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerCustomWidgetProvider(Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidgetProvider;)V
    .locals 0

    .line 204
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerGestureHandlerProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 415
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerInfoCardItemProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    .line 143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerInfoCardViewProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    .line 294
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 185
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V
    .locals 0

    .line 251
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerPositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 0

    .line 452
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerSelectionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
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

    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerSelectionPlayButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
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

    .line 105
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 0
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

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerTextSelectionPopUpUIProvider(Lcom/amazon/kindle/krx/ui/ITextSelectionPopUpUIProvider;)V
    .locals 0

    .line 344
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerTitleBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 0
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

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerTutorialProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
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

    .line 301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removePositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 0

    .line 458
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeSurfaceOverReader(Landroid/view/ViewGroup;)V
    .locals 0

    .line 403
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public requestShowChrome()V
    .locals 1

    .line 488
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCoverPanelClickListener(Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;)V
    .locals 0

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOverlaysVisible(ZZ)V
    .locals 0

    .line 350
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setPanelsInteractive(Z)Z
    .locals 0

    .line 373
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setReaderBottomMargin(I)V
    .locals 0

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public showBrochure(Ljava/util/Collection;Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)Z
    .locals 0
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

    .line 434
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public showTutorial(Ljava/lang/String;)V
    .locals 0

    .line 421
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
