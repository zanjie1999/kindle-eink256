.class Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->saveCardsAsync(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

.field final synthetic val$cards:Ljava/util/Collection;

.field final synthetic val$deckId:Ljava/lang/String;

.field final synthetic val$doneCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->val$cards:Ljava/util/Collection;

    iput-object p3, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->val$deckId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->val$doneCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$800(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->val$cards:Ljava/util/Collection;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->val$deckId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;->saveCardsAsync(Ljava/util/Collection;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->val$doneCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;->val$doneCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
