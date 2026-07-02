.class Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;
.super Ljava/lang/Object;
.source "DeckAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/DeckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCardContentRunnable"
.end annotation


# instance fields
.field private cardModel:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

.field private cardView:Lcom/amazon/kedu/flashcards/views/CardView;

.field final synthetic this$0:Lcom/amazon/kedu/flashcards/DeckAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/DeckAdapter;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;->this$0:Lcom/amazon/kedu/flashcards/DeckAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;->cardModel:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 194
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;->cardView:Lcom/amazon/kedu/flashcards/views/CardView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;->this$0:Lcom/amazon/kedu/flashcards/DeckAdapter;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;->cardModel:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckAdapter$LoadCardContentRunnable;->cardView:Lcom/amazon/kedu/flashcards/views/CardView;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/DeckAdapter;->loadCardContent(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V

    return-void
.end method
