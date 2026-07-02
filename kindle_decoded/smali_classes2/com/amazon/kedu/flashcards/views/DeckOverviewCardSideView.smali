.class public Lcom/amazon/kedu/flashcards/views/DeckOverviewCardSideView;
.super Lcom/amazon/kedu/flashcards/views/CardSideView;
.source "DeckOverviewCardSideView.java"


# static fields
.field private static final BACK_LAYOUT_RESOURCE_ID:I

.field private static final FRONT_LAYOUT_RESOURCE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_deck_overview_card_side_back:I

    sput v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewCardSideView;->BACK_LAYOUT_RESOURCE_ID:I

    .line 15
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_deck_overview_card_side_front:I

    sput v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewCardSideView;->FRONT_LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p2, v0, :cond_0

    sget v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewCardSideView;->FRONT_LAYOUT_RESOURCE_ID:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewCardSideView;->BACK_LAYOUT_RESOURCE_ID:I

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;-><init>(Landroid/content/Context;ILcom/amazon/kedu/flashcards/utils/Side;)V

    return-void
.end method


# virtual methods
.method protected getEditButton()Landroid/view/View;
    .locals 0

    return-object p0
.end method
