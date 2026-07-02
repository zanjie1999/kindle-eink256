.class public Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;
.super Landroid/widget/TextView;
.source "ReaderContentTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getReaderUITypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
