.class public final Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;
.super Ljava/lang/Object;
.source "BookGridController.kt"

# interfaces
.implements Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->inflateBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $bubbleView:Landroid/view/View;

.field final synthetic $holder:Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

.field private shouldChangeAlignment:Z


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;Landroid/view/View;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;->$holder:Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;->$bubbleView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 485
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;->shouldChangeAlignment:Z

    return-void
.end method


# virtual methods
.method public getShouldChangeAlignment()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;->shouldChangeAlignment:Z

    return v0
.end method

.method public setAlignment(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;->$holder:Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getButtonsOneTapContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;->$holder:Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;->getButtonsOneTapContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 493
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;->$bubbleView:Landroid/view/View;

    const-string v0, "bubbleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$inflateBubbleView$delegate$1;->$holder:Lcom/amazon/readingactions/ui/widget/BookGridController$DetailBubbleHolder;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
