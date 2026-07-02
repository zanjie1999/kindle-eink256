.class public Lcom/amazon/kindle/util/ReadingModeUtil;
.super Ljava/lang/Object;
.source "ReadingModeUtil.java"


# static fields
.field private static final readingModeMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Lcom/amazon/krf/platform/ViewSettings$ReadingMode;",
            "Lcom/amazon/kindle/dualreadingmode/ReadingMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    sget-object v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    sget-object v1, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->FIXED:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    sget-object v3, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    sget-object v4, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->REFLOWABLE:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    sget-object v5, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->REFLOWABLE:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    sget-object v6, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->RECAPS:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    sget-object v7, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->RECAPS:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/util/ReadingModeUtil;->readingModeMap:Lcom/google/common/collect/BiMap;

    return-void
.end method

.method public static fromKRFReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/util/ReadingModeUtil;->readingModeMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-nez p0, :cond_0

    .line 42
    sget-object p0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    :cond_0
    return-object p0
.end method

.method public static toKRFReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kindle/util/ReadingModeUtil;->readingModeMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-nez p0, :cond_0

    .line 30
    sget-object p0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    :cond_0
    return-object p0
.end method
