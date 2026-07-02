.class Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;
.super Ljava/lang/Object;
.source "KindleLearningObjectFeedbackDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->initCommentCheckBoxes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

.field final synthetic val$finalIndex:I


# direct methods
.method constructor <init>(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    iput p2, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->val$finalIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 119
    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$100(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)I

    move-result v0

    invoke-static {}, Lcom/amazon/klo/feedback/FeedbackType;->values()[Lcom/amazon/klo/feedback/FeedbackType;

    move-result-object v1

    iget v2, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->val$finalIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/amazon/klo/feedback/FeedbackType;->getValue()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$102(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;I)I

    .line 120
    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    iget-object v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v0}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$100(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)I

    move-result v0

    sget-object v1, Lcom/amazon/klo/feedback/FeedbackType;->OTHER:Lcom/amazon/klo/feedback/FeedbackType;

    invoke-virtual {v1}, Lcom/amazon/klo/feedback/FeedbackType;->getValue()I

    move-result v1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 126
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object v4

    sget v5, Lcom/amazon/klo/R$string;->klo_feedback_comment:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 127
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 129
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 130
    invoke-static {}, Lcom/amazon/klo/feedback/FeedbackType;->values()[Lcom/amazon/klo/feedback/FeedbackType;

    move-result-object v4

    iget v5, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->val$finalIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/amazon/klo/feedback/FeedbackType;->getValue()I

    move-result v4

    sget-object v5, Lcom/amazon/klo/feedback/FeedbackType;->OTHER:Lcom/amazon/klo/feedback/FeedbackType;

    invoke-virtual {v5}, Lcom/amazon/klo/feedback/FeedbackType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 132
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 138
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 139
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {v4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 142
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$100(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$000(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 148
    :cond_4
    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;->this$0:Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->access$000(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    return-void
.end method
