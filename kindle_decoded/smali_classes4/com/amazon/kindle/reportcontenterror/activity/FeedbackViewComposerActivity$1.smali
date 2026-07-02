.class Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;
.super Ljava/lang/Object;
.source "FeedbackViewComposerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$contentGuid:Ljava/lang/String;

.field final synthetic val$endPosition:I

.field final synthetic val$errorType:Ljava/lang/String;

.field final synthetic val$rceUserComment:Landroid/widget/EditText;

.field final synthetic val$startPosition:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

    iput-object p2, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$rceUserComment:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$asin:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$contentGuid:Ljava/lang/String;

    iput p5, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$startPosition:I

    iput p6, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$endPosition:I

    iput-object p7, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$errorType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

    iget-object p1, p1, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string v0, "SubmitButtonPressed"

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$rceUserComment:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$contentGuid:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$startPosition:I

    iget v4, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$endPosition:I

    iget-object v6, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;->val$errorType:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->access$000(Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
