.class Lcom/amazon/klo/KindleLearningObjectDetailActivity$11;
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

    .line 631
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$11;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 635
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$11;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "KINDLE_LEARNING_OBJECTS"

    const-string v2, "FeedbackNegativeClicked"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$11;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "term"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$11;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
