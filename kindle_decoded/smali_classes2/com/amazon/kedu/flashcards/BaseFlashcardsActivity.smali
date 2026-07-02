.class public abstract Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;
.super Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;
.source "BaseFlashcardsActivity.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/events/EventHandler;


# instance fields
.field private isDestroyed:Z

.field private toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->isDestroyed:Z

    return-void
.end method


# virtual methods
.method protected getThemeForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 86
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_NonNLN:I

    return p1

    .line 94
    :cond_0
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_NonNLN:I

    return p1

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light:I

    return p1

    .line 105
    :cond_2
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme:I

    return p1
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method protected initHeader()V
    .locals 1

    .line 56
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->fc_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->isDestroyed:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {p0}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->requestPortraitOrientation(Landroid/app/Activity;)V

    .line 26
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->bindActivityToCurrentBook(Landroid/app/Activity;)V

    .line 27
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    const-class v0, Lcom/amazon/kedu/flashcards/events/BookClosedEvent;

    invoke-virtual {p1, v0, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 28
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->reportFlashcardsOpened()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    .line 35
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/BookClosedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->isDestroyed:Z

    .line 37
    invoke-super {p0}, Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">(TT;)V"
        }
    .end annotation

    .line 72
    instance-of p1, p1, Lcom/amazon/kedu/flashcards/events/BookClosedEvent;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 5

    .line 43
    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsAlertDialog;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/FlashcardsAlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kedu/flashcards/R$string;->fc_search_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const v2, 0x104000a

    .line 47
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 49
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v1
.end method
