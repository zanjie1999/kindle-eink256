.class Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;
.super Ljava/util/HashMap;
.source "ReadingModePositionsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/util/ReadingModePositionsFactory;->convertToEquivalentPositionForReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/amazon/krf/platform/ViewSettings$ReadingMode;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/util/ReadingModePositionsFactory;

.field final synthetic val$equivalentPosition:Ljava/lang/Integer;

.field final synthetic val$hintPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field final synthetic val$sourceReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

.field final synthetic val$targetReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/util/ReadingModePositionsFactory;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Ljava/lang/Integer;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->this$0:Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    iput-object p2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->val$targetReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    iput-object p3, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->val$equivalentPosition:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->val$sourceReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    iput-object p5, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->val$hintPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 79
    iget-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->val$targetReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    iget-object p2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->val$equivalentPosition:Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->val$sourceReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    iget-object p2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$1;->val$hintPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
