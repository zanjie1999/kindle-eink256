.class public Lcom/amazon/kindle/krx/ui/ReaderUIManager;
.super Lcom/amazon/kindle/krx/ui/BaseReaderUIManager;
.source "ReaderUIManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "+",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "+",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private final actionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

.field private final bookInfoButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private final commandBarItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private final contentDecorationSettingsProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private coverPanelClickListener:Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;

.field private final customActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private customWidgetRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;",
            "Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;",
            "Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidgetProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

.field private gestureHandlerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private final infoCardRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lazyBrightnessManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyMarkedPositionManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyPanelController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReaderLayoutCustomizer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private overlayVisibilityManager:Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

.field private final playSelectionButtonRegistry:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

.field private previousState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field private final readerController:Lcom/amazon/kcp/reader/IReaderController;

.field private final selectionButtonController:Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;

.field private final settingsController:Lcom/amazon/kcp/application/UserSettingsController;

.field private final titleBarItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private final widgetItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-class v0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/android/menu/CustomActionMenuController;Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/KindleReaderSDK;Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/IReaderController;",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            "Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            "Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseReaderUIManager;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 154
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

    .line 155
    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->selectionButtonController:Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;

    .line 156
    iput-object p4, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->settingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 157
    iput-object p9, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyPanelController:Ldagger/Lazy;

    .line 158
    iput-object p10, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyBrightnessManager:Ldagger/Lazy;

    .line 159
    iput-object p11, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyMarkedPositionManager:Ldagger/Lazy;

    .line 160
    iput-object p12, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyReaderLayoutCustomizer:Ldagger/Lazy;

    if-eqz p2, :cond_0

    .line 164
    new-instance p1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    invoke-virtual {p2, p1}, Lcom/amazon/android/menu/CustomActionMenuController;->setActionButtonProviderRegistry(Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V

    .line 167
    :cond_0
    new-instance p1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->widgetItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 168
    new-instance p1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->commandBarItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 169
    new-instance p1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->titleBarItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 171
    iput-object p6, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->playSelectionButtonRegistry:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    .line 172
    new-instance p1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    invoke-virtual {p6, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->setPlaySelectionButtonProviderRegistry(Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V

    .line 173
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->playSelectionButtonRegistry:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->getActionItemProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 174
    new-instance p1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->infoCardRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 176
    invoke-virtual {p5}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->executor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    .line 178
    new-instance p1, Lcom/amazon/kindle/krx/ui/ReaderUIManager$1;

    invoke-direct {p1, p0, p8}, Lcom/amazon/kindle/krx/ui/ReaderUIManager$1;-><init>(Lcom/amazon/kindle/krx/ui/ReaderUIManager;Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;)V

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setActionBarDecorationProviderRegistry(Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V

    .line 193
    invoke-static {p5}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setKindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 198
    const-class p1, Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    new-instance p2, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {p2}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 199
    new-instance p1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 200
    new-instance p1, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->bookInfoButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 201
    invoke-interface {p7, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 202
    const-class p1, Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    invoke-interface {p7, p1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 203
    new-instance p1, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->contentDecorationSettingsProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 206
    new-instance p1, Lcom/amazon/kindle/krx/ui/ReaderUIManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager$2;-><init>(Lcom/amazon/kindle/krx/ui/ReaderUIManager;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->registerGestureHandlerProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 505
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyContentDecorationSettingsInDocView()V
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->applyContentDecorationSettings()V

    :cond_0
    return-void
.end method

.method public applyReaderBrightness(Landroid/view/Window;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 834
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyBrightnessManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->applyScreenBrightness(Landroid/view/Window;)Z

    :cond_0
    return-void
.end method

.method public changeDecorationProviderState(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->executor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    new-instance v2, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/amazon/kindle/krx/ui/ReaderUIManager$4;-><init>(Lcom/amazon/kindle/krx/ui/ReaderUIManager;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public closeComponentViewer()V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeComponentViewer()V

    :cond_0
    return-void
.end method

.method public closePanels()V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyPanelController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/panels/IPanelController;

    if-eqz v0, :cond_0

    .line 817
    invoke-interface {v0}, Lcom/amazon/kindle/panels/IPanelController;->closePanels()V

    :cond_0
    return-void
.end method

.method public createActionBarButtonTutorial(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;
    .locals 1

    .line 940
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getInstance()Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->createActionBarButtonTutorial(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    move-result-object p1

    return-object p1
.end method

.method public createSurfaceOverReader()Landroid/view/ViewGroup;
    .locals 3

    .line 840
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 843
    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->reader_plugin_surface:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 845
    sget v2, Lcom/amazon/kindle/krxsdk/R$id;->reader_plugin_surface_stub:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 852
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 853
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTextAndImageBrochureSlide(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;
    .locals 1

    .line 961
    new-instance v0, Lcom/amazon/kcp/ui/brochure/TextImageBrochureSlide;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/ui/brochure/TextImageBrochureSlide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public flashOverlays()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->flashOverlays()V

    return-void
.end method

.method public getActionBarWidgetItems()Ljava/util/Collection;
    .locals 3
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

    .line 336
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 338
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 343
    :cond_2
    new-instance v2, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    .line 344
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/krx/content/LocalBook;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 345
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->commandBarItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getActionButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 2
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

    .line 391
    const-class v0, Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
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

    .line 425
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->bookInfoButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
.end method

.method public getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    return-object v0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->settingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
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

    .line 919
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->contentDecorationSettingsProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
.end method

.method public getCoverPanelClickListener()Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->coverPanelClickListener:Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 716
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentActivity()Landroid/content/Context;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
    .locals 1

    .line 694
    invoke-static {}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-static {}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    .line 412
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
.end method

.method public getCustomWidget(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customWidgetRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-nez v0, :cond_1

    .line 785
    new-instance v0, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customWidgetRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customWidgetRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    return-object p1
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

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->gestureHandlerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
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

    .line 667
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->infoCardRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
.end method

.method public getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->overlayVisibilityManager:Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/OverlayVisibilityManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->overlayVisibilityManager:Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->overlayVisibilityManager:Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    return-object v0
.end method

.method public getPageMargin()Lcom/amazon/kindle/krx/reader/PageMargin;
    .locals 5

    .line 886
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 887
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 891
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 894
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v1

    .line 895
    sget-object v3, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 900
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColumnCount()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result v0

    .line 901
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getTopMarginValueForHorizontalText()I

    move-result v1

    .line 902
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getBottomMarginValueForHorizontalText()I

    move-result v2

    move v3, v0

    goto :goto_1

    .line 896
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLeftMarginValueForVerticalText()I

    move-result v1

    .line 897
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getRightMarginValueForVerticalText()I

    move-result v3

    .line 898
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalMarginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result v0

    move v2, v0

    move v0, v1

    move v1, v2

    .line 905
    :goto_1
    new-instance v4, Lcom/amazon/kindle/krx/reader/PageMargin;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/amazon/kindle/krx/reader/PageMargin;-><init>(IIII)V

    return-object v4

    .line 908
    :cond_3
    new-instance v0, Lcom/amazon/kindle/krx/reader/PageMargin;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/amazon/kindle/krx/reader/PageMargin;-><init>(IIII)V

    return-object v0

    .line 888
    :cond_4
    :goto_2
    new-instance v0, Lcom/amazon/kindle/krx/reader/PageMargin;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/amazon/kindle/krx/reader/PageMargin;-><init>(IIII)V

    return-object v0
.end method

.method public getPositionRange(IIZ)Lcom/amazon/kindle/krx/reader/IPositionRange;
    .locals 5

    .line 242
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 243
    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 244
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 245
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getGestureFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getService()Lcom/amazon/kcp/reader/gestures/GestureService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 250
    new-instance p2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 251
    new-instance p3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result p1

    invoke-direct {p3, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 253
    :try_start_0
    new-instance p1, Lcom/amazon/kindle/krx/reader/PositionRange;

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/krx/reader/PositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 255
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when creating PositionRange for book: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "for position range: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v2
.end method

.method public getSelectionWidgetItems()Ljava/util/Collection;
    .locals 3
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

    .line 308
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->widgetItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    new-instance v2, Lcom/amazon/kindle/krx/content/ContentSelection;

    invoke-direct {v2, v0}, Lcom/amazon/kindle/krx/content/ContentSelection;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBarWidgetItems()Ljava/util/Collection;
    .locals 3
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

    .line 351
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 355
    sget-object v0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->TAG:Ljava/lang/String;

    const-string v1, "Cannot return registered buttons since bookInfo is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 359
    :cond_2
    new-instance v2, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    .line 360
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/krx/content/LocalBook;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 361
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->titleBarItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isContinuousScrollEnabled()Z
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEventInMargin(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 275
    instance-of v2, v1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v2, :cond_1

    .line 276
    check-cast v1, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 277
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getGestureHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getService()Lcom/amazon/kcp/reader/gestures/GestureService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->isEventInMargin(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public isMrprDialogBeingShown()Z
    .locals 1

    .line 989
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->isDialogBeingShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyMarkedPositionManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;->notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V

    return-void
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 721
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    .line 722
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object p1

    .line 723
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    .line 725
    sget-object v2, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->previousState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 730
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 737
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    .line 742
    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 744
    new-instance v3, Lcom/amazon/kindle/krx/events/SelectionEvent;

    new-instance v2, Lcom/amazon/kindle/krx/content/ContentSelection;

    invoke-direct {v2, v0}, Lcom/amazon/kindle/krx/content/ContentSelection;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    sget-object v0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->OPTIONS_SHOWN:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    invoke-direct {v3, p1, v2, v0}, Lcom/amazon/kindle/krx/events/SelectionEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;)V

    .line 747
    new-instance p1, Lcom/amazon/kindle/krx/events/UIEvent;

    const/4 v0, 0x1

    sget-object v2, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->ObjectSelection:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    invoke-direct {p1, v0, v2}, Lcom/amazon/kindle/krx/events/UIEvent;-><init>(ZLcom/amazon/kindle/krx/events/UIEvent$UIElement;)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->previousState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v2, :cond_3

    .line 750
    new-instance v0, Lcom/amazon/kindle/krx/events/SelectionEvent;

    sget-object v2, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->OPTIONS_HIDDEN:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    invoke-direct {v0, p1, v3, v2}, Lcom/amazon/kindle/krx/events/SelectionEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;)V

    .line 753
    new-instance v3, Lcom/amazon/kindle/krx/events/UIEvent;

    const/4 p1, 0x0

    sget-object v2, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->ObjectSelection:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    invoke-direct {v3, p1, v2}, Lcom/amazon/kindle/krx/events/UIEvent;-><init>(ZLcom/amazon/kindle/krx/events/UIEvent$UIElement;)V

    move-object p1, v3

    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object p1, v3

    :goto_0
    if-eqz v3, :cond_4

    .line 757
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 762
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 765
    :cond_5
    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->previousState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    :cond_6
    :goto_1
    return-void
.end method

.method public performPostReaderModeSwitchActions()V
    .locals 6

    .line 581
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 585
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 587
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    .line 588
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 590
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {v1, v3, v3, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    goto :goto_1

    .line 593
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOverlayFlashTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysAfterDelay(JZ)V

    goto :goto_1

    .line 599
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 601
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    .line 606
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyReaderLayoutCustomizer:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->getCurrentReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->onReaderModeChanged(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    :cond_4
    return-void
.end method

.method public refreshActionBarDecoration()V
    .locals 1

    .line 543
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->getInstance()Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateActionBar()V

    :cond_0
    return-void
.end method

.method public refreshActionButtons()V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/amazon/android/menu/CustomActionMenuController;->updateButtons()V

    :cond_0
    return-void
.end method

.method public refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 453
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->refreshViewOrDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    return-void
.end method

.method public refreshGestureHandlerProviders()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 225
    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v1, :cond_0

    return-void

    .line 228
    :cond_0
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 232
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getGestureFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->initHandlers(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Z

    :cond_2
    return-void
.end method

.method public refreshPanel(Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public refreshReaderActionButtons()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/amazon/android/menu/CustomActionMenuController;->updateButtons()V

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public refreshReaderPanels()V
    .locals 3

    .line 561
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyPanelController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/panels/IPanelController;

    if-eqz v1, :cond_0

    .line 567
    invoke-interface {v1}, Lcom/amazon/kindle/panels/IPanelController;->clearSidePanelLayout()V

    .line 571
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->bindPanelContent()V

    if-eqz v1, :cond_1

    .line 573
    invoke-interface {v1}, Lcom/amazon/kindle/panels/IPanelController;->isTOCPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/reader/TableOfContentsEvent;

    sget-object v2, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->REFRESHED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/TableOfContentsEvent;-><init>(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method

.method public refreshSeekBar()V
    .locals 2

    .line 613
    invoke-static {}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateSeekBar()V

    .line 617
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 632
    invoke-virtual {v0, v1, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlays(IZZ)Z

    :cond_2
    return-void
.end method

.method public refreshSeekBarTextViewsAndSecondaryProgress()V
    .locals 1

    .line 639
    invoke-static {}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    invoke-static {}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateSeekBarTextViewsAndSecondaryProgress()V

    :cond_0
    return-void
.end method

.method public refreshView()V
    .locals 1

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->refreshViewOrDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    return-void
.end method

.method public refreshViewOrDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v1, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/kindle/krx/ui/ReaderUIManager$3;-><init>(Lcom/amazon/kindle/krx/ui/ReaderUIManager;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 472
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->executor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
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

    if-eqz p1, :cond_0

    .line 431
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->addActionBarDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    :cond_0
    return-void
.end method

.method public registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->commandBarItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method

.method public registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 2
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

    if-nez p1, :cond_0

    return-void

    .line 378
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;-><init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 379
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v1, v0}, Lcom/amazon/android/menu/CustomActionMenuController;->addActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerBookInfoButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->bookInfoButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method

.method public registerContentDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 705
    new-instance v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;-><init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    invoke-static {v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->register(Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;)V

    :cond_0
    return-void
.end method

.method public registerContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 1

    .line 711
    new-instance v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;-><init>(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    invoke-static {v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->register(Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;)V

    return-void
.end method

.method public registerContentDecorationSettingsProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 913
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->contentDecorationSettingsProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method

.method public registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
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

    if-nez p1, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customActionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 403
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

    if-eqz v0, :cond_1

    .line 404
    new-instance v0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;-><init>(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 405
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->actionMenuController:Lcom/amazon/android/menu/CustomActionMenuController;

    invoke-virtual {p1, v0}, Lcom/amazon/android/menu/CustomActionMenuController;->addActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_1
    return-void
.end method

.method public registerCustomPanelProvider(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 532
    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->registerCustomPanelRowProvider(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;)V

    :cond_0
    return-void
.end method

.method public registerCustomWidgetProvider(Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidgetProvider;)V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customWidgetRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customWidgetRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->customWidgetRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerGestureHandlerProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->gestureHandlerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/amazon/kindle/krx/providers/ProviderRegistry;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->gestureHandlerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->gestureHandlerProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerInfoCardItemProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXInfoCardItem;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->infoCardRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public registerInfoCardViewProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
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

    if-nez p1, :cond_0

    return-void

    .line 651
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/ui/InfoCardViewProvider;-><init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 652
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->infoCardRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
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

    .line 438
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->addLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    return-void
.end method

.method public registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 524
    new-instance v0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;-><init>(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    .line 525
    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->registerCustomPanelRowProvider(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;)V

    :cond_0
    return-void
.end method

.method public registerPositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyMarkedPositionManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;->registerPositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V

    return-void
.end method

.method public registerSelectionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 2
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

    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->selectionButtonController:Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;

    new-instance v1, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/ui/KRXCustomSelectionButton;-><init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;->addCustomSelectionButton(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V

    :cond_0
    return-void
.end method

.method public registerSelectionPlayButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->playSelectionButtonRegistry:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->addSelectionPlayButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    :cond_0
    return-void
.end method

.method public registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->widgetItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized registerTextSelectionPopUpUIProvider(Lcom/amazon/kindle/krx/ui/ITextSelectionPopUpUIProvider;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 674
    monitor-exit p0

    return-void
.end method

.method public registerTitleBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->titleBarItemProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method

.method public registerTutorialProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 933
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getInstance()Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->registerProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    :cond_0
    return-void
.end method

.method public removePositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->lazyMarkedPositionManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;->removePositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V

    return-void
.end method

.method public removeSurfaceOverReader(Landroid/view/ViewGroup;)V
    .locals 2

    .line 863
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 866
    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->reader_plugin_surface:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 869
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestShowChrome()V
    .locals 1

    .line 1016
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showChrome()V

    :cond_0
    return-void
.end method

.method public setCoverPanelClickListener(Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->coverPanelClickListener:Lcom/amazon/kindle/krx/ui/panels/ICoverPanelClickListener;

    return-void
.end method

.method public setOverlaysVisible(ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 803
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    return-void
.end method

.method public setPanelsInteractive(Z)Z
    .locals 1

    .line 823
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPanelsInteractive(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setReaderBottomMargin(I)V
    .locals 1

    .line 876
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->addBottomMargin(I)V

    :cond_1
    return-void
.end method

.method public showBrochure(Ljava/util/Collection;Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)Z
    .locals 3
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

    .line 966
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 972
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/info/TutorialLock;->tryLockTutorials()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 977
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 978
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "brochure_assets"

    .line 979
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const-string p1, "brochure_options"

    .line 981
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 983
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
