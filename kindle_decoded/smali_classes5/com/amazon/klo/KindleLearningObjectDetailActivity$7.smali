.class Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;
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

.field final synthetic val$playUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    iput-object p2, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;->val$playUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 535
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$300(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/klo/KLOMetricManager;->reportYoutubeClickedForTerm(Ljava/lang/String;Z)V

    .line 537
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;->val$playUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 539
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v1, "KINDLE_LEARNING_OBJECTS"

    const-string v2, "TermDetailVideo"

    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
