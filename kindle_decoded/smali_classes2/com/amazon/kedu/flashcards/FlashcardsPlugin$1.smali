.class final Lcom/amazon/kedu/flashcards/FlashcardsPlugin$1;
.super Ljava/lang/Object;
.source "FlashcardsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->createFlashcardsActionButton()Lcom/amazon/kindle/krx/ui/IActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 261
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    .line 262
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isNonLinearNavigationEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 264
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-eq p1, p2, :cond_0

    .line 266
    sget p1, Lcom/amazon/kedu/flashcards/R$drawable;->fc_flashcards_light:I

    goto :goto_0

    .line 270
    :cond_0
    sget p1, Lcom/amazon/kedu/flashcards/R$drawable;->fc_flashcards:I

    goto :goto_0

    .line 275
    :cond_1
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-eq p1, p2, :cond_2

    .line 277
    sget p1, Lcom/amazon/kedu/flashcards/R$drawable;->fc_nonnln_flashcards_light:I

    goto :goto_0

    .line 281
    :cond_2
    sget p1, Lcom/amazon/kedu/flashcards/R$drawable;->fc_nonnln_flashcards:I

    .line 285
    :goto_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 228
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->flashcards_button_id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 304
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/ftue/util/Utils;->isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    return v0

    :cond_0
    const/16 v0, 0xcd

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 234
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_plugin_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 240
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 223
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$1;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 246
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->flashcardsPluginStarted()V

    .line 247
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "Chrome"

    const-string v1, "Flashcards"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$1;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    .line 298
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/ftue/util/Utils;->isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    return v0
.end method
