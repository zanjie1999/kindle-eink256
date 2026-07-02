.class public Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;
.super Lcom/amazon/kedu/flashcards/views/SwipableView;
.source "DeckOverviewSwipableView.java"


# static fields
.field private static final DRAGGABLE_VIEW_ID:I

.field private static final LAYOUT_RESOURCE_ID:I


# instance fields
.field private cardView:Lcom/amazon/kedu/flashcards/views/CardView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_deck_overview_list_item:I

    sput v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->LAYOUT_RESOURCE_ID:I

    .line 12
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->draggable_flashcard:I

    sput v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->DRAGGABLE_VIEW_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    sget v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->LAYOUT_RESOURCE_ID:I

    sget v1, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->DRAGGABLE_VIEW_ID:I

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kedu/flashcards/views/SwipableView;-><init>(Landroid/content/Context;II)V

    .line 18
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->initialize()V

    return-void
.end method


# virtual methods
.method public getCardView()Lcom/amazon/kedu/flashcards/views/CardView;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->cardView:Lcom/amazon/kedu/flashcards/views/CardView;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 23
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->card_view:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/CardView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->cardView:Lcom/amazon/kedu/flashcards/views/CardView;

    return-void
.end method
