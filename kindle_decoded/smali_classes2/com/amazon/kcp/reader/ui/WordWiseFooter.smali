.class public Lcom/amazon/kcp/reader/ui/WordWiseFooter;
.super Ljava/lang/Object;
.source "WordWiseFooter.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IKRXFooter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected footerTextId:I

.field private isViewOptionsVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final resources:Landroid/content/res/Resources;

.field protected final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->isViewOptionsVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 55
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    .line 56
    sget p1, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    .line 58
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private showSliderAfterFTUEForTheFirstTime()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object v0

    .line 312
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->hasShownFtueDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->hasShownFooterTutorial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->isViewOptionsVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 315
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->onGestureAction()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected getAdjustmentActivityClass()Ljava/lang/Class;
    .locals 1

    .line 115
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;

    return-object v0
.end method

.method public getCurrentColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getFooterPosition()Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;
    .locals 1

    .line 120
    sget-object v0, Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;->RIGHT:Lcom/amazon/kindle/krx/ui/IKRXFooter$Position;

    return-object v0
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 3

    .line 127
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenGlossModel()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 132
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseFooter$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFooter;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openGlossModelForCurrentBookAsync(Ljava/lang/Runnable;)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->updateFooterText(Z)V

    .line 151
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showSliderAfterFTUEForTheFirstTime()V

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public onContentStatusChange(Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 178
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseFooter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter$2;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFooter;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onGestureAction()Z
    .locals 2

    .line 63
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isFooterVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter()V

    goto :goto_0

    .line 70
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_status_download_failed:I

    if-ne v0, v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showFailureMessage()V

    goto :goto_0

    .line 72
    :cond_2
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    if-ne v0, v1, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showWordWiseSlider()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 167
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->isViewOptionsVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showSliderAfterFTUEForTheFirstTime()V

    :cond_0
    return-void
.end method

.method protected showConnectivityMessage()V
    .locals 6

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$string;->error_wan_download_limit_exceed_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ww/R$string;->error_wan_download_limit_exceed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v4, 0x7db

    if-ge v2, v4, :cond_0

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "year"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$string;->error_title_date:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ww/R$string;->error_message_date:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.DATE_SETTINGS"

    goto :goto_0

    :cond_0
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    .line 277
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v3

    .line 278
    sget-object v4, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-static {v4, v0, v1, v3}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "alert_settings_action"

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload()V

    :cond_1
    return-void
.end method

.method protected showFailureMessage()V
    .locals 2

    .line 228
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showFullMemoryMessage()V

    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showUnknownErrorMessage()V

    return-void

    .line 235
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload()V

    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->showConnectivityMessage()V

    :goto_1
    return-void
.end method

.method protected showFullMemoryMessage()V
    .locals 3

    .line 295
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "FileSystemFull"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showUnknownErrorMessage()V
    .locals 4

    .line 303
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ww/R$string;->download_interrupted:I

    .line 304
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_unknown_error_message:I

    .line 305
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload()V

    return-void
.end method

.method protected showWordWiseSlider()V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 88
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_WORDWISE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getPageMargin()Lcom/amazon/kindle/krx/reader/PageMargin;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/PageMargin;->getRightMargin()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ww/R$dimen;->reader_footer_offset_from_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ww/R$dimen;->word_wise_footer_height:I

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 97
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->getCurrentColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    .line 102
    :goto_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->getAdjustmentActivityClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 106
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ColorMode"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RightPadding"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BottomPadding"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected updateFooterText(Z)V
    .locals 3

    .line 191
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->sidecarForBookLoaded(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 199
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->isDownloadingDictionary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_status_downloading:I

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->hasDictionaryDownloadFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_status_download_failed:I

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->hasDictionaryDownloadCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->isNotDownloadingDictionary()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_status_not_downloading:I

    goto :goto_0

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->TAG:Ljava/lang/String;

    const-string v2, "Unknown state"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_status_download_failed:I

    .line 213
    :goto_0
    iget v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    if-eq v0, v1, :cond_5

    .line 214
    iput v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    if-eqz p1, :cond_5

    .line 216
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter()V

    .line 217
    iget p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;->footerTextId:I

    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    if-ne p1, v0, :cond_5

    .line 218
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    :cond_5
    return-void
.end method
