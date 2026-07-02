.class Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;
.super Ljava/lang/Object;
.source "KSOScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->this$1:Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;

    iput-object p2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    iput-object p3, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->this$1:Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;

    iget-object v0, v0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    iget-object v2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->val$image:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$100(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->this$1:Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;

    iget-object v0, v0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    new-instance v1, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;

    iget-object v2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->this$1:Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;

    iget-object v2, v2, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    iget-object v3, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v3}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;-><init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$202(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->this$1:Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;

    iget-object v0, v0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$200(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->this$1:Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;

    iget-object v0, v0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$000(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_campaign"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/specialOffer/IKSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
