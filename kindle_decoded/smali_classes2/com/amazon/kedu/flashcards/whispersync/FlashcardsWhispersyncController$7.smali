.class Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getFlashcardsForDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

.field final synthetic val$deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field final synthetic val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;->val$deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    iput-object p3, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;->val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$800(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;->val$deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;->getFlashcardsForDeckAsync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7$1;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
