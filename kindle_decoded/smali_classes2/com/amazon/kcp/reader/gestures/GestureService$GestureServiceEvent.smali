.class public Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;
.super Ljava/lang/Object;
.source "GestureService.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/GestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureServiceEvent"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/events/ReaderEventTypes;)V
    .locals 0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
