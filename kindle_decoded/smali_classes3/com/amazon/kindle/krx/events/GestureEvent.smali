.class public Lcom/amazon/kindle/krx/events/GestureEvent;
.super Lcom/amazon/kindle/krx/events/AbstractContentEvent;
.source "GestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;
    }
.end annotation


# instance fields
.field public final type:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;IILcom/amazon/kindle/krx/events/GestureEvent$GestureType;)V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/events/AbstractContentEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Z)V

    .line 59
    iput p3, p0, Lcom/amazon/kindle/krx/events/GestureEvent;->x:I

    .line 60
    iput p4, p0, Lcom/amazon/kindle/krx/events/GestureEvent;->y:I

    .line 61
    iput-object p5, p0, Lcom/amazon/kindle/krx/events/GestureEvent;->type:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    return-void
.end method
