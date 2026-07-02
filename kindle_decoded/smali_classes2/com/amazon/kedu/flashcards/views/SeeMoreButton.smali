.class public Lcom/amazon/kedu/flashcards/views/SeeMoreButton;
.super Landroid/widget/Button;
.source "SeeMoreButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;,
        Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;
    }
.end annotation


# instance fields
.field private expandabilityChangedListener:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;

.field private target:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance p1, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$1;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$1;-><init>(Lcom/amazon/kedu/flashcards/views/SeeMoreButton;)V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->expandabilityChangedListener:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p1, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$1;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$1;-><init>(Lcom/amazon/kedu/flashcards/views/SeeMoreButton;)V

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->expandabilityChangedListener:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/views/SeeMoreButton;)Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->target:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/views/SeeMoreButton;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->updateVisibility()V

    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->target:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;->shouldExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setTarget(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->target:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->expandabilityChangedListener:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;

    invoke-interface {v0, v1}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;->removeExpandabilityChancedListener(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;)V

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->target:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;->getExpandableButtonLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->target:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->expandabilityChangedListener:Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;

    invoke-interface {p1, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;->addExpandabilityChangedListener(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;)V

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->updateVisibility()V

    return-void
.end method
