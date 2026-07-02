.class public final Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;
.super Ljava/lang/Object;
.source "RubberbandingStatusChangeEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;
    }
.end annotation


# instance fields
.field private final type:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;->type:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;

    return-void
.end method


# virtual methods
.method public final getEventType()Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;->type:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
