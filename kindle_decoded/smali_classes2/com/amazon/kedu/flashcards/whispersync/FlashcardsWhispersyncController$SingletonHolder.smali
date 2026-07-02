.class Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$SingletonHolder;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 363
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$SingletonHolder;->INSTANCE:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    return-void
.end method
