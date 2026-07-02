.class public final Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;
.super Ljava/lang/Object;
.source "SharedLibraryFilterFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;
    }
.end annotation


# static fields
.field private static final BUILD_TYPE:Ljava/lang/String; = "build_type"

.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;

.field private static final IS_FILTER_SELECTED:Ljava/lang/String; = "is_filter_selected"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final recordFilterSelection(Ljava/lang/String;Z)V
    .locals 4

    .line 52
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->SHARED_LIBRARY_FILTER_SELECTION:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 54
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->SHARED_LIBRARY_FILTER_SELECTION:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    new-instance v3, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$recordFilterSelection$1;

    invoke-direct {v3, p1, p2, v0}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$recordFilterSelection$1;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 53
    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final recordMyItemsFilterSelection(Z)V
    .locals 2

    .line 32
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->MY_ITEMS_FILTER:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;->recordFilterSelection(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final recordSharedItemsFilterSelection(Z)V
    .locals 2

    .line 42
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->SHARED_ITEMS_FILTER:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;->recordFilterSelection(Ljava/lang/String;Z)V

    return-void
.end method
