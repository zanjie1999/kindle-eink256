.class public Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;
.super Ljava/lang/Object;
.source "LayeredSeekBar.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/seekbar/LayeredSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayeredSeekBarEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;
    }
.end annotation


# instance fields
.field private publisher:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

.field private final type:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/seekbar/LayeredSeekBar;Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;)V
    .locals 0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;->publisher:Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    .line 535
    iput-object p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;->type:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;->type:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
