.class public Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;
.super Ljava/lang/Object;
.source "ClutchEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;
    }
.end annotation


# instance fields
.field private final type:Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

.field private final word:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->type:Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->word:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->type:Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

    return-object v0
.end method

.method public getWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;->word:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
