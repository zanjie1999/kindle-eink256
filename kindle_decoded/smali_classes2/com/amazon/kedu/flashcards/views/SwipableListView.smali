.class public abstract Lcom/amazon/kedu/flashcards/views/SwipableListView;
.super Landroid/widget/ListView;
.source "SwipableListView.java"


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/views/SwipableListView;)Landroid/widget/BaseAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/SwipableListView;->adapter:Landroid/widget/BaseAdapter;

    return-object p0
.end method


# virtual methods
.method public animateRowRemoval(ILjava/lang/Object;)V
    .locals 10

    .line 48
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v2, p1, v1

    .line 51
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/views/SwipableListView;->deleteItem(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableListView;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 59
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    sub-int v5, v0, p1

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    add-int/2addr p1, v6

    :goto_0
    const/4 v5, 0x0

    if-gt p1, v0, :cond_1

    sub-int v7, p1, v1

    .line 64
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    new-array v8, v6, [F

    int-to-float v9, v3

    aput v9, v8, v5

    const-string/jumbo v5, "translationY"

    .line 66
    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v6, [F

    const/4 v0, 0x0

    aput v0, p1, v5

    const-string v1, "scaleX"

    .line 70
    invoke-static {v2, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 71
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v6, [F

    aput v0, p1, v5

    const-string v0, "scaleY"

    .line 73
    invoke-static {v2, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 74
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 77
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 79
    new-instance v0, Lcom/amazon/kedu/flashcards/views/SwipableListView$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kedu/flashcards/views/SwipableListView$1;-><init>(Lcom/amazon/kedu/flashcards/views/SwipableListView;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kedu/flashcards/R$integer;->fc_delete_flashcard_time:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 97
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public abstract deleteItem(Ljava/lang/Object;)V
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableListView;->adapter:Landroid/widget/BaseAdapter;

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
