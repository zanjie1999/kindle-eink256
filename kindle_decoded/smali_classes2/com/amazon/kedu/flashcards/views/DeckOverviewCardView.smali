.class public Lcom/amazon/kedu/flashcards/views/DeckOverviewCardView;
.super Lcom/amazon/kedu/flashcards/views/CardView;
.source "DeckOverviewCardView.java"


# static fields
.field private static final LAYOUT_RESOURCE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_deck_overview_card:I

    sput v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewCardView;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    sget v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewCardView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    sget v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewCardView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/views/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method
