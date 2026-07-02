.class public final Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;
.super Ljava/lang/Object;
.source "TimeDisplaySettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$reportMetrics(Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;->reportMetrics(Ljava/lang/String;)V

    return-void
.end method

.method private final reportMetrics(Ljava/lang/String;)V
    .locals 4

    .line 75
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "AmazonKindle"

    const-string v3, "TimeDisplay"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 78
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method


# virtual methods
.method public final createShowClockWhileReadingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 44
    sget v1, Lcom/amazon/kindle/krl/R$string;->kre_more_rs_time_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "context.getString(R.string.kre_more_rs_time_title)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget v1, Lcom/amazon/kindle/krl/R$string;->kre_more_rs_time_context:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    sget-object v5, Lcom/amazon/kindle/setting/item/Category;->READING_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 47
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v1, "Utils.getFactory()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string v1, "Utils.getFactory().userSettingsController"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->isTimeDisplayVisible()Z

    move-result v6

    .line 48
    new-instance v7, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider$createShowClockWhileReadingItem$1;

    invoke-direct {v7, p0}, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider$createShowClockWhileReadingItem$1;-><init>(Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;)V

    const-string/jumbo v2, "setting_item_show_clock_while_reading"

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, v0

    .line 42
    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public getItems()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/timedisplay/TimeDisplaySettingItemProvider;->createShowClockWhileReadingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
