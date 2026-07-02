.class Lcom/amazon/klo/infocard/KLOInfoCardView$3;
.super Ljava/lang/Object;
.source "KLOInfoCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/infocard/KLOInfoCardView;->setXrayButtonClickEvent(Lcom/amazon/klo/list/TermListItem;Lcom/amazon/klo/sidecar/SidecarHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

.field final synthetic val$detailsFinal:Lorg/json/JSONObject;

.field final synthetic val$termListItemFinal:Lcom/amazon/klo/list/TermListItem;


# direct methods
.method constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardView;Lcom/amazon/klo/list/TermListItem;Lorg/json/JSONObject;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$3;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    iput-object p2, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$3;->val$termListItemFinal:Lcom/amazon/klo/list/TermListItem;

    iput-object p3, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$3;->val$detailsFinal:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 121
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$3;->val$termListItemFinal:Lcom/amazon/klo/list/TermListItem;

    invoke-virtual {v1}, Lcom/amazon/klo/list/TermListItem;->getJson()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "termJson"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$3;->val$detailsFinal:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "detailObject"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromInfoCard"

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "KINDLE_LEARNING_OBJECTS"

    const-string v1, "InfoCardXrayOpen"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$3;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardView;->access$300(Lcom/amazon/klo/infocard/KLOInfoCardView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/klo/KLOMetricManager;->reportInfocardXrayButtonPressed(Ljava/lang/String;)V

    return-void
.end method
