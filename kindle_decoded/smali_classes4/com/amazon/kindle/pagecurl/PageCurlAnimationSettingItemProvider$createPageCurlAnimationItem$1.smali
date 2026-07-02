.class public final Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider$createPageCurlAnimationItem$1;
.super Ljava/lang/Object;
.source "PageCurlAnimationSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider;->createPageCurlAnimationItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider$createPageCurlAnimationItem$1;->this$0:Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p2, p2, 0x1

    .line 44
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "Utils.getFactory().userSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setPageCurlEnabled(Z)V

    if-eqz p2, :cond_0

    const-string p2, "PageCurlOn"

    goto :goto_0

    :cond_0
    const-string p2, "PageCurlOff"

    .line 47
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "AmazonKindle"

    const-string v3, "PageCurlSettingsToggle"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 50
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    .line 47
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 52
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider$createPageCurlAnimationItem$1;->this$0:Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/pagecurl/PageCurlAnimationSettingItemProvider;->createPageCurlAnimationItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void
.end method
