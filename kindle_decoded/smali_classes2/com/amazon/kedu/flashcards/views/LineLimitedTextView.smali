.class public Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;
.super Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;
.source "LineLimitedTextView.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;


# instance fields
.field private expandabilityChangedListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private expandable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandabilityChangedListeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandabilityChangedListeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandabilityChangedListeners:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addExpandabilityChangedListener(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandabilityChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getExpandableButtonLabel()Ljava/lang/String;
    .locals 2

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_see_more_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recheckExpandability(I)V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;-><init>(Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeExpandabilityChancedListener(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandabilityChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExpandability(Z)V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandable:Z

    if-eq p1, v0, :cond_0

    .line 59
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandable:Z

    .line 60
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandabilityChangedListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;

    .line 62
    invoke-interface {v0, p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;->onExpandabilityChanged(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldExpand()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->expandable:Z

    return v0
.end method
