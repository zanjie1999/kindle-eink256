.class Lcom/amazon/klo/KindleLearningObjectActivity$8;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Lcom/amazon/klo/list/TermListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectActivity;->setupList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectActivity;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    iput-object p2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->val$thisActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    .line 600
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->val$thisActivity:Landroid/app/Activity;

    const-class v1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->val$list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/klo/list/TermListItem;

    .line 610
    invoke-virtual {p2}, Lcom/amazon/klo/list/TermListItem;->getJson()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "termJson"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$700(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/sidecar/SidecarHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/klo/sidecar/SidecarHandler;->getDetailsOf(Lcom/amazon/klo/list/TermListItem;)Lorg/json/JSONObject;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "detailObject"

    .line 611
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$800(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageStartPosition:Ljava/lang/String;

    const-string/jumbo v1, "originalBookPosition"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$1400(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p2}, Lcom/amazon/klo/list/TermListItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/klo/KLOMetricManager;->reportTermClicked(Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p2

    const-string v0, "KINDLE_LEARNING_OBJECTS"

    const-string v1, "TermDetailOpen"

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p2

    const-string v0, "TermDetailOpenTime"

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 623
    iget-object p2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$8;->val$thisActivity:Landroid/app/Activity;

    const/16 v0, 0x7b

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
