.class Lcom/amazon/kindle/annotation/WaypointAdapter$1;
.super Ljava/lang/Object;
.source "WaypointAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/WaypointAdapter;->WaypointChangedSubscriber(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/WaypointAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/WaypointAdapter;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/annotation/WaypointAdapter$1;->this$0:Lcom/amazon/kindle/annotation/WaypointAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/annotation/WaypointAdapter$1;->this$0:Lcom/amazon/kindle/annotation/WaypointAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/annotation/WaypointAdapter;->access$000(Lcom/amazon/kindle/annotation/WaypointAdapter;)V

    return-void
.end method
