.class Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController$1;
.super Ljava/lang/Object;
.source "WhispersyncDeckController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;->getDecksForBook(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$flashcardDecks:Ljava/util/LinkedList;

.field final synthetic val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;Ljava/util/LinkedList;)V
    .locals 0

    .line 43
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController$1;->val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;

    iput-object p3, p0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController$1;->val$flashcardDecks:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController$1;->val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController$1;->val$flashcardDecks:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;->onDecksLoaded(Ljava/util/List;)V

    return-void
.end method
