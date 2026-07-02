.class Lcom/amazon/kindle/specialOffer/KSOScreenActivity$3;
.super Ljava/lang/Object;
.source "KSOScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->updateUI(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

.field final synthetic val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$3;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    iput-object p2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$3;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$3;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {p1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$000(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$3;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_skip"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/specialOffer/IKSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$3;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {p1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$300(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)V

    return-void
.end method
