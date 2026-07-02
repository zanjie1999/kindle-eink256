.class Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;
.super Ljava/lang/Object;
.source "DecksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/data/DecksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadableDeck"
.end annotation


# instance fields
.field private deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field private hasLoaded:Z


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/data/DecksManager;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;-><init>(Lcom/amazon/kedu/flashcards/data/DecksManager;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Z)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kedu/flashcards/data/DecksManager;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Z)V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 362
    iput-boolean p3, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->hasLoaded:Z

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;)Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->hasLoaded:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;Z)Z
    .locals 0

    .line 349
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->hasLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/data/DecksManager$LoadableDeck;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-object p0
.end method
