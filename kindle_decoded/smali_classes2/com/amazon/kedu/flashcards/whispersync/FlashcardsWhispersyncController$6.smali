.class Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getDecksForBookAsync(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

.field final synthetic val$bookId:Ljava/lang/String;

.field final synthetic val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;->val$bookId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;->val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$700(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;->val$bookId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;->val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;->getDecksForBook(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;)V

    return-void
.end method
