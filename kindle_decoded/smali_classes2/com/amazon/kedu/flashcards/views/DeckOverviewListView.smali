.class public Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;
.super Lcom/amazon/kedu/flashcards/views/SwipableListView;
.source "DeckOverviewListView.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

.field private interactionListener:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SwipableListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/SwipableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/SwipableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private deleteCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->interactionListener:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;->onDeleteItemClicked(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    :cond_0
    return-void
.end method

.method private markForDeletion(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->markForDeletion(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->interactionListener:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;->onItemMarkedForDeletion(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteItem(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->deleteCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->getAdapter()Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->getAdapter()Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    return-object v0
.end method

.method public onClicked(Lcom/amazon/kedu/flashcards/views/SwipableView;Ljava/lang/Object;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->interactionListener:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;

    if-eqz p1, :cond_0

    .line 69
    check-cast p2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-interface {p1, p2}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;->onItemClicked(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    :cond_0
    return-void
.end method

.method public onLongClicked(Lcom/amazon/kedu/flashcards/views/SwipableView;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onMarkedForDeletion(Ljava/lang/Object;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCardMarkedForDeletion()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object v0

    .line 37
    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 41
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->indexOf(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)I

    move-result v1

    .line 42
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/amazon/kedu/flashcards/views/SwipableListView;->animateRowRemoval(ILjava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->deleteCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    .line 52
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->markForDeletion(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    return-void
.end method

.method public onUndoDeletion(Ljava/lang/Object;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCardMarkedForDeletion()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->markForDeletion(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    .line 87
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/views/SwipableListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public setDeckOverviewInteractionListener(Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->interactionListener:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;

    return-void
.end method
