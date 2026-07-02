.class Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;
.super Ljava/lang/Object;
.source "KindleLearningObjectFeedbackDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

.field final synthetic val$titleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    iput-object p2, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;->val$titleView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    int-to-float v0, v0

    .line 89
    iget-object v1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 90
    iget-object v1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    :cond_0
    return-void
.end method
