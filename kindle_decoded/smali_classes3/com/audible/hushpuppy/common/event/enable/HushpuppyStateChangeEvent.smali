.class public final Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;
.super Ljava/lang/Object;
.source "HushpuppyStateChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;
    }
.end annotation


# static fields
.field public static final DISABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

.field public static final ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;


# instance fields
.field private final state:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    sget-object v1, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;-><init>(Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    .line 27
    new-instance v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    sget-object v1, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->DISABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;-><init>(Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->DISABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    return-void
.end method

.method private constructor <init>(Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->state:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->state:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    check-cast p1, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->state:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getState()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->state:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->state:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HushpuppyStateChangeEvent{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->state:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
