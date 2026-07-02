.class Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7$1;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;

.field final synthetic val$flashcards:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;Ljava/util/List;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7$1;->this$1:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7$1;->val$flashcards:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7$1;->this$1:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;

    iget-object v1, v0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;->val$handler:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7$1;->val$flashcards:Ljava/util/List;

    iget-object v0, v0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;->val$deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;->onCardsLoaded(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
