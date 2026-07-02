.class Lcom/amazon/klo/infocard/KLOInfoCardView$5$1;
.super Ljava/lang/Object;
.source "KLOInfoCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/infocard/KLOInfoCardView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/klo/infocard/KLOInfoCardView$5;


# direct methods
.method constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardView$5;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardView$5;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "KINDLE_LEARNING_OBJECTS"

    const-string v2, "InfoCardSourceOpen"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardView$5;

    iget-object v1, v0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/klo/infocard/KLOInfoCardView;->openInBrowser(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
