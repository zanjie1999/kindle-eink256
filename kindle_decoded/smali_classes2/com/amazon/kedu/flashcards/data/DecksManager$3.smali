.class Lcom/amazon/kedu/flashcards/data/DecksManager$3;
.super Ljava/lang/Object;
.source "DecksManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/data/DecksManager;->updateWhispersyncData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/data/DecksManager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$3;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$3;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$702(Lcom/amazon/kedu/flashcards/data/DecksManager;Z)Z

    .line 212
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$3;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$800(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 213
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$400()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$3;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v3}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$800(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->saveCardsAsync(Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$3;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$900(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 220
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 223
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$3;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$900(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$400()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$3;->this$0:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-static {v3}, Lcom/amazon/kedu/flashcards/data/DecksManager;->access$1000(Lcom/amazon/kedu/flashcards/data/DecksManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->saveDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
