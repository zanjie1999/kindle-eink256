.class Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;
.super Ljava/lang/Object;
.source "SeeMoreGhlActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity;

.field final synthetic val$cardSide:Lcom/amazon/kedu/flashcards/models/CardSideModel;

.field final synthetic val$ghlView:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Lcom/amazon/kedu/flashcards/models/CardSideModel;Landroid/view/View;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->this$0:Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$ghlView:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    iput-object p3, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$cardSide:Lcom/amazon/kedu/flashcards/models/CardSideModel;

    iput-object p4, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$ghlView:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$cardSide:Lcom/amazon/kedu/flashcards/models/CardSideModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$cardSide:Lcom/amazon/kedu/flashcards/models/CardSideModel;

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$ghlView:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$ghlView:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 54
    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 53
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->setGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
