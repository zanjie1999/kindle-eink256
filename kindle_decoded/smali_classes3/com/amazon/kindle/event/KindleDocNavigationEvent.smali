.class public Lcom/amazon/kindle/event/KindleDocNavigationEvent;
.super Ljava/lang/Object;
.source "KindleDocNavigationEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;,
        Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;,
        Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;
    }
.end annotation


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final eventType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

.field private final navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

.field private final navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

.field private final rangeEnd:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final rangeStart:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->eventType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 149
    iput-object p3, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-eqz p4, :cond_0

    .line 150
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_0
    iput-object p4, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    .line 151
    new-instance p2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    long-to-int p3, p5

    invoke-direct {p2, p3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p2, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->rangeStart:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 152
    new-instance p2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    long-to-int p3, p7

    invoke-direct {p2, p3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p2, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->rangeEnd:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 153
    iput-object p1, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->eventType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    return-object v0
.end method

.method public getNavigationDirection()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    return-object v0
.end method

.method public getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    return-object v0
.end method

.method public getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->rangeEnd:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->rangeStart:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
