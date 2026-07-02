.class public final Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics;
.super Ljava/lang/Object;
.source "OutOfBookNavBarsFastMetrics.kt"


# static fields
.field private static final BAR_ITEM_FIELD_KEY:Ljava/lang/String; = "nav_bar_item"

.field private static final NOTIFICATIONS_BUTTON_IDENTIFIER:Ljava/lang/String; = "InAppNotificationsBellIcon"

.field private static final NOTIFICATIONS_METRIC_NAME:Ljava/lang/String; = "Notifications"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportNavBarTap(Ljava/lang/String;)V
    .locals 3

    const-string v0, "navBarElement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->OUT_OF_BOOK_BARS_TAP_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->OUT_OF_BOOK_BARS_TAP_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics$reportNavBarTap$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics$reportNavBarTap$1;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
