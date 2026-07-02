.class public Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;
.super Ljava/lang/Object;
.source "NonLinearNavigationEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;
    }
.end annotation


# instance fields
.field private final eventType:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

.field private final nlnMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private final range:Lcom/amazon/android/docviewer/IPositionRange;

.field private final time:J


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/IPositionRange;JLcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->range:Lcom/amazon/android/docviewer/IPositionRange;

    .line 35
    iput-wide p2, p0, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->time:J

    .line 36
    iput-object p4, p0, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->nlnMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 37
    iput-object p5, p0, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->eventType:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    return-void
.end method


# virtual methods
.method public getEventType()Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->eventType:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    return-object v0
.end method

.method public getNlnMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->nlnMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object v0
.end method

.method public getRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->range:Lcom/amazon/android/docviewer/IPositionRange;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->time:J

    return-wide v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
