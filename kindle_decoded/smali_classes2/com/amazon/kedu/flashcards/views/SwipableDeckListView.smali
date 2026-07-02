.class public Lcom/amazon/kedu/flashcards/views/SwipableDeckListView;
.super Lcom/amazon/kedu/flashcards/views/SwipableListView;
.source "SwipableDeckListView.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SwipableListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/SwipableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/SwipableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public deleteItem(Ljava/lang/Object;)V
    .locals 1

    .line 37
    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 38
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->deleteDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    return-void
.end method

.method public onDeleteDeck(ILcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/SwipableListView;->animateRowRemoval(ILjava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Lcom/amazon/kedu/flashcards/DeckListAdapter;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/views/SwipableListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 31
    invoke-virtual {p1, p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->setOnDeleteDeckListener(Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;)V

    return-void
.end method
