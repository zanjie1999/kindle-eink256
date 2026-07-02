.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsHandlerFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;,
        Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory;->Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;

    return-void
.end method

.method public static final getHandler(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;)Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory;->Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Companion;->getHandler(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;)Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;

    move-result-object p0

    return-object p0
.end method
