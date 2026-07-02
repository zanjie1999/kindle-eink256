.class Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->saveDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

.field final synthetic val$bookId:Ljava/lang/String;

.field final synthetic val$deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field final synthetic val$doneCallback:Ljava/lang/Runnable;

.field final synthetic val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->val$deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    iput-object p3, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->val$bookId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;

    iput-object p5, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->val$doneCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$700(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->val$deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->val$bookId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;->val$doneCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;->saveDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;Ljava/lang/Runnable;)V

    return-void
.end method
