.class final Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer$1;
.super Ljava/lang/Object;
.source "SleepTimerEvent.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 3

    .line 28
    new-instance v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer$1;->execute(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
