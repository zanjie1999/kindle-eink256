.class public Lcom/amazon/ku/events/KuContentEvent;
.super Ljava/lang/Object;
.source "KuContentEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/events/KuContentEvent$EventType;
    }
.end annotation


# instance fields
.field private final eventType:Lcom/amazon/ku/events/KuContentEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/ku/events/KuContentEvent$EventType;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/ku/events/KuContentEvent;->eventType:Lcom/amazon/ku/events/KuContentEvent$EventType;

    return-void
.end method


# virtual methods
.method public getEventType()Lcom/amazon/ku/events/KuContentEvent$EventType;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/ku/events/KuContentEvent;->eventType:Lcom/amazon/ku/events/KuContentEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
