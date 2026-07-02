.class Lcom/amazon/klo/KindleLearningObjectDetailActivity$10;
.super Ljava/lang/Object;
.source "KindleLearningObjectDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$10;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 621
    new-instance p1, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;

    invoke-direct {p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;-><init>()V

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$10;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;->sendFeedback(Ljava/lang/String;ZILjava/lang/String;)V

    .line 623
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "KINDLE_LEARNING_OBJECTS"

    const-string v2, "FeedbackPositiveClicked"

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$10;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/klo/KLOMetricManager;->reportFeedbackPositiveClicked(Ljava/lang/String;)V

    .line 626
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$10;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/klo/R$string;->klo_feedback_finish_toast:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 627
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
