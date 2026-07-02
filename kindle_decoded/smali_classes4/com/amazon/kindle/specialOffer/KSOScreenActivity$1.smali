.class Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;
.super Ljava/lang/Object;
.source "KSOScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->configureKSO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$000(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/specialOffer/IKSOCacheManager;->getDisplayingCampaign()Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getLocalImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    new-instance v3, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1$1;-><init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
