.class public interface abstract Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WhisperSyncBookLoadHandler"
.end annotation


# virtual methods
.method public abstract onDecksLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
            ">;)V"
        }
    .end annotation
.end method
