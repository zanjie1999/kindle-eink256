.class public Lcom/amazon/kedu/flashcards/views/QuizCardBehindSideView;
.super Lcom/amazon/kedu/flashcards/views/QuizCardSideView;
.source "QuizCardBehindSideView.java"


# static fields
.field private static final LAYOUT_RESOURCE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_quiz_card_behind_side:I

    sput v0, Lcom/amazon/kedu/flashcards/views/QuizCardBehindSideView;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    sget v0, Lcom/amazon/kedu/flashcards/views/QuizCardBehindSideView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    .line 17
    sget v0, Lcom/amazon/kedu/flashcards/views/QuizCardBehindSideView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;-><init>(Landroid/content/Context;ILcom/amazon/kedu/flashcards/utils/Side;)V

    return-void
.end method
