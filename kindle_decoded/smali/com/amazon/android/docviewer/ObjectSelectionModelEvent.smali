.class public Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;
.super Ljava/lang/Object;
.source "ObjectSelectionModelEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;
    }
.end annotation


# instance fields
.field private publisher:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private type:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->publisher:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 25
    iput-object p2, p0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->type:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    return-void
.end method


# virtual methods
.method public getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->publisher:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-object v0
.end method

.method public getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->type:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
