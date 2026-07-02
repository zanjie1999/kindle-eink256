.class public final Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createCouponItem$1;
.super Ljava/lang/Object;
.source "CoreSettingItemsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createCouponItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createCouponItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "setting_item_coupon"

    .line 437
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v1, "MyCouponItemClicked"

    .line 438
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 439
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 441
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createCouponItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$hasNetWorkConnection(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/map/MAPWebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "startUrl"

    const-string v2, "https://www.amazon.cn/gp/aw/mycoupon/ke?ref_=kfc_mycoupon"

    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    sget v1, Lcom/amazon/kcp/more/R$string;->more_item_coupon:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
