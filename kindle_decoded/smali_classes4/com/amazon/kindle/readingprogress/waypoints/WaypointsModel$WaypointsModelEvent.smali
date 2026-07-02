.class public Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;
.super Ljava/lang/Object;
.source "WaypointsModel.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaypointsModelEvent"
.end annotation


# instance fields
.field private publisher:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;->publisher:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    return-void
.end method


# virtual methods
.method public getPublisher()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;->publisher:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
