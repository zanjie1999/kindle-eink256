.class public Lcom/amazon/kindle/event/UserEvent;
.super Ljava/lang/Object;
.source "UserEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/UserEvent$EventType;
    }
.end annotation


# instance fields
.field private timestampMillis:J

.field private type:Lcom/amazon/kindle/event/UserEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/event/UserEvent$EventType;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/event/UserEvent;->type:Lcom/amazon/kindle/event/UserEvent$EventType;

    const-string p1, "UTC"

    .line 64
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/event/UserEvent;->setTimestampMillis(J)V

    return-void
.end method


# virtual methods
.method public getEventType()Lcom/amazon/kindle/event/UserEvent$EventType;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/event/UserEvent;->type:Lcom/amazon/kindle/event/UserEvent$EventType;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/amazon/kindle/event/UserEvent;->timestampMillis:J

    return-wide v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTimestampMillis(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/amazon/kindle/event/UserEvent;->timestampMillis:J

    return-void
.end method
