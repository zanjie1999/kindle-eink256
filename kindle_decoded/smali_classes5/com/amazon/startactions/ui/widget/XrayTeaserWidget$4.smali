.class Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$4;
.super Ljava/lang/Object;
.source "XrayTeaserWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->createEntitiesWidget(Landroid/view/ViewGroup;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

.field final synthetic val$sessionMetric:Lcom/amazon/startactions/metrics/Metric;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;Lcom/amazon/startactions/metrics/Metric;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$4;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$4;->val$sessionMetric:Lcom/amazon/startactions/metrics/Metric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 483
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$4;->val$sessionMetric:Lcom/amazon/startactions/metrics/Metric;

    const-string v0, "XrayTeaserEntitiesWidgetLaunchedXray"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 484
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$4;->val$sessionMetric:Lcom/amazon/startactions/metrics/Metric;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$4;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    invoke-virtual {v2}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 487
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 489
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.amazon.xray.ui.activity.OpenDirectlyToFirstEntityType"

    .line 490
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
