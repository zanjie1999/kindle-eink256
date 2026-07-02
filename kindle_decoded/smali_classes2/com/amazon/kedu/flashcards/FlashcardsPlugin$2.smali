.class Lcom/amazon/kedu/flashcards/FlashcardsPlugin$2;
.super Ljava/lang/Object;
.source "FlashcardsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/FlashcardsPlugin;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 351
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->isFlashcardEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->bookClosed()V

    .line 354
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getBookIdentifier(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->uploadForBook(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/events/BookClosedEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kedu/flashcards/events/BookClosedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    .line 357
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->resetActiveBook()V

    .line 358
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->resetLastOpened()V

    :cond_0
    const/4 p1, 0x0

    .line 360
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->setActiveDeckIndex(I)V

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 340
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->isFlashcardEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->bookOpened()V

    .line 343
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getBookIdentifier(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->downloadForBook(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method
