.class public Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;
.super Ljava/lang/Object;
.source "AmplifyController.java"


# instance fields
.field private amplifyHeader:Landroid/view/View;

.field private clipsProvider:Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;

.field private currentBookId:Ljava/lang/String;

.field private isAmplifyModeEnabled:Z

.field private isInAmplifyMode:Z

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private navigationPanel:Lcom/amazon/kindle/speedreading/amplifier/NavigationPanel;

.field private navigationPanelSurface:Landroid/view/ViewGroup;

.field private readerSurface:Landroid/view/ViewGroup;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method private getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getAmplifyHeader()Landroid/view/View;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->amplifyHeader:Landroid/view/View;

    return-object v0
.end method

.method public isInAmplifyMode()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->isInAmplifyMode:Z

    return v0
.end method

.method public stopAmplifyMode()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->currentBookId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AMPLIFY:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->currentBookId:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->setReaderMode(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    :cond_0
    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->isInAmplifyMode:Z

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->amplifyHeader:Landroid/view/View;

    .line 134
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v2

    invoke-interface {v2, v0, v0}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->enableStandardOverlays()V

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->readerSurface:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->removeSurfaceOverReader(Landroid/view/ViewGroup;)V

    .line 138
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->readerSurface:Landroid/view/ViewGroup;

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->navigationPanelSurface:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->removeSurfaceOverReader(Landroid/view/ViewGroup;)V

    .line 141
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->navigationPanelSurface:Landroid/view/ViewGroup;

    .line 144
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$dimen;->amplify_navbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, -0x1

    .line 146
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setReaderBottomMargin(I)V

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setPanelsInteractive(Z)Z

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/AmplifyController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/speedreading/amplifier/AmplifyStoppedEvent;

    invoke-direct {v1}, Lcom/amazon/kindle/speedreading/amplifier/AmplifyStoppedEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
