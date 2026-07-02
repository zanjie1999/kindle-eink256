.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsHandlerFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandler(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;)Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 27
    new-instance p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneralHandler;-><init>()V

    goto :goto_0

    .line 25
    :cond_2
    new-instance p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;-><init>()V

    goto :goto_0

    .line 24
    :cond_3
    new-instance p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;-><init>()V

    :goto_0
    return-object p1
.end method
