.class public Lcom/amazon/kindle/krx/events/ContentDecorationEvent;
.super Ljava/lang/Object;
.source "ContentDecorationEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final gestureType:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

.field private final start:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;FF)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 32
    iput-object p3, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    .line 34
    iput-object p4, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->gestureType:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    .line 35
    iput p5, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->x:F

    .line 36
    iput p6, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->y:F

    return-void
.end method


# virtual methods
.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getGestureType()Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->gestureType:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    return-object v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 100
    iget v0, p0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->y:F

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
