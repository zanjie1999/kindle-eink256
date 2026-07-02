.class public interface abstract Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WhisperSyncDeckLoadHandler"
.end annotation


# virtual methods
.method public abstract onCardsLoaded(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
