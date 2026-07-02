.class public final Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;
.super Ljava/lang/Object;
.source "MoreSettingsPageFastMetrics.kt"


# static fields
.field private static final SELECTED_SETTING:Ljava/lang/String; = "selected_setting"

.field private static final SETTING_NAME:Ljava/lang/String; = "setting_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportClickNonTogglableItem(Ljava/lang/String;)V
    .locals 3

    const-string v0, "settingName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->MORE_SETTINGS_PAGE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->MORE_SETTINGS_PAGE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics$reportClickNonTogglableItem$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics$reportClickNonTogglableItem$1;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final reportToggleItem(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "settingName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->MORE_SETTINGS_PAGE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->MORE_SETTINGS_PAGE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics$reportToggleItem$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics$reportToggleItem$1;-><init>(Ljava/lang/String;Z)V

    .line 24
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
