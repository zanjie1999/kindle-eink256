.class public Lcom/amazon/bookwizard/ReadingListActionProvider;
.super Ljava/lang/Object;
.source "ReadingListActionProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.ReadingListActionProvider"


# instance fields
.field private final dm:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 44
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->dm:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;
    .locals 1

    .line 125
    sget-object v0, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->BOOKWIZARD:Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$string;->readinglist_bw_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 3

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/bookwizard/webview/BookWizardWebViewPreloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    iget-object v1, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .line 63
    sget-object v0, Lcom/amazon/bookwizard/ReadingListActionProvider;->TAG:Ljava/lang/String;

    const-string v1, "Book Wizard button clicked"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->dm:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->dm:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->UNREGISTERED_USER:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/webview/WebViewManager;->setActive(Z)V

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/amazon/bookwizard/ReadingListActionProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLibraryFragmentLifecycleEvent(Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 83
    sget-object v0, Lcom/amazon/bookwizard/ReadingListActionProvider$1;->$SwitchMap$com$amazon$kindle$event$LibraryFragmentLifeCycleEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->getActivityLifecycleType()Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 89
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->setLibraryVisible(Z)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->setLibraryVisible(Z)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
