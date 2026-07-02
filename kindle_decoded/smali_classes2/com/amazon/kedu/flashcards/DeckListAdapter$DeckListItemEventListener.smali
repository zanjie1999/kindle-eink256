.class Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;
.super Ljava/lang/Object;
.source "DeckListAdapter.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/DeckListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeckListItemEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/kedu/flashcards/DeckListAdapter;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/DeckListAdapter;Lcom/amazon/kedu/flashcards/DeckListAdapter$1;)V
    .locals 0

    .line 400
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;-><init>(Lcom/amazon/kedu/flashcards/DeckListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/amazon/kedu/flashcards/views/SwipableView;Ljava/lang/Object;)V
    .locals 2

    .line 427
    check-cast p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 428
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$1200(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$1300(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->deselectItem(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectItem(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    goto :goto_0

    .line 441
    :cond_1
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->markQuizOpenedFromDeckListClicked()V

    .line 442
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 443
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KindleFlashcards"

    const-string v1, "DeckSelected"

    .line 444
    invoke-static {v0, v1, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 447
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$1400(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/QuizModeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "deckId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {p2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$1400(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onLongClicked(Lcom/amazon/kedu/flashcards/views/SwipableView;Ljava/lang/Object;)V
    .locals 2

    .line 456
    check-cast p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 458
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$1200(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$1202(Lcom/amazon/kedu/flashcards/DeckListAdapter;Z)Z

    .line 461
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectItem(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    :cond_0
    return-void
.end method

.method public onMarkedForDeletion(Ljava/lang/Object;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$900(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$1100(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$1000(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$900(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$900(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;->onDeleteDeck(ILcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-static {v0, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$902(Lcom/amazon/kedu/flashcards/DeckListAdapter;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-void
.end method

.method public onUndoDeletion(Ljava/lang/Object;)V
    .locals 1

    .line 416
    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 418
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$900(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$900(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;->this$0:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->access$902(Lcom/amazon/kedu/flashcards/DeckListAdapter;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    :cond_0
    return-void
.end method
