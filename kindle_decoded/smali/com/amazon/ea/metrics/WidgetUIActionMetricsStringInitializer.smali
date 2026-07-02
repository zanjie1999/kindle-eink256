.class public Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;
.super Ljava/lang/Object;
.source "WidgetUIActionMetricsStringInitializer.java"


# static fields
.field private static final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "DisplayedPurchase"

    const-string v2, "OneTapDisplayedPurchase"

    .line 50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedPurchaseWithoutPrice"

    const-string v2, "OneTapClickedPurchaseWithoutPrice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedPurchaseWithPrice"

    const-string v2, "OneTapClickedPurchaseWithPrice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedBorrow"

    const-string v2, "OneTapClickedBorrow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedDownload"

    const-string v2, "OneTapClickedDownload"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedReadNow"

    const-string v2, "OneTapClickedReadNow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedReadSample"

    const-string v2, "OneTapClickedReadSample"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedUnbuy"

    const-string v2, "OneTapClickedUnbuy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedSampleBuyNow"

    const-string v2, "OneTapClickedSampleBuyNow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedSampleSeeInStore"

    const-string v2, "OneTapClickedSampleSeeInStore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedSampleSeeInStoreBookCover"

    const-string v2, "OneTapClickedSampleSeeInStoreBookCover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedGridSeeInStore"

    const-string v2, "OneTapClickedGridSeeInStore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedPurchaseFailureMessage"

    const-string v2, "OneTapClickedPurchaseFailureMessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "ClickedBorrowFailureMessage"

    const-string v2, "OneTapClickedBorrowFailureMessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "DisplayedPurchaseFailureMessage"

    const-string v2, "OneTapDisplayedPurchaseFailureMessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    const-string v1, "DisplayedBorrowFailureMessage"

    const-string v2, "OneTapDisplayedBorrowFailureMessage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 77
    sget-object p1, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->stringMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method
