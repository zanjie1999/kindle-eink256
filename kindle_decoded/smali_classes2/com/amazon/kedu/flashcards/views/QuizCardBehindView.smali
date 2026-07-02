.class public Lcom/amazon/kedu/flashcards/views/QuizCardBehindView;
.super Lcom/amazon/kedu/flashcards/views/QuizCardView;
.source "QuizCardBehindView.java"


# static fields
.field private static final LAYOUT_RESOURCE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_quiz_card_behind:I

    sput v0, Lcom/amazon/kedu/flashcards/views/QuizCardBehindView;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    sget v0, Lcom/amazon/kedu/flashcards/views/QuizCardBehindView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    sget v0, Lcom/amazon/kedu/flashcards/views/QuizCardBehindView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public hideFromAccessibilityService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
