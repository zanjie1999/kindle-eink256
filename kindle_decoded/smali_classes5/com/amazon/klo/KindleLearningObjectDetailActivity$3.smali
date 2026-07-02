.class Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;
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

.field final synthetic val$moreUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    iput-object p2, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;->val$moreUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 368
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {p1}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$000(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectDetailActivity;->access$100(Lcom/amazon/klo/KindleLearningObjectDetailActivity;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/klo/KLOMetricManager;->reportWikipediaClickedForTerm(Ljava/lang/String;Z)V

    .line 369
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;->val$moreUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 371
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v1, "KINDLE_LEARNING_OBJECTS"

    const-string v2, "TermDetailDescribeMore"

    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$3;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
