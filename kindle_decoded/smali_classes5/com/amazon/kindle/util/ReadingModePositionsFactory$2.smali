.class Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;
.super Ljava/util/HashMap;
.source "ReadingModePositionsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/util/ReadingModePositionsFactory;->convertWayPointsForTargetReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;)Ljava/util/List;
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

.field final synthetic val$equivalentIntWayPointPosition:Ljava/lang/Integer;

.field final synthetic val$sourceReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

.field final synthetic val$targetReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

.field final synthetic val$waypoint:Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/util/ReadingModePositionsFactory;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Ljava/lang/Integer;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->this$0:Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    iput-object p2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->val$targetReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    iput-object p3, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->val$equivalentIntWayPointPosition:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->val$sourceReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    iput-object p5, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->val$waypoint:Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->val$targetReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    iget-object p2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->val$equivalentIntWayPointPosition:Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->val$sourceReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    iget-object p2, p0, Lcom/amazon/kindle/util/ReadingModePositionsFactory$2;->val$waypoint:Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    invoke-virtual {p2}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
