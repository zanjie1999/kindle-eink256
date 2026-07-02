.class public final Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;
.super Ljava/lang/Object;
.source "SleepTimerEvent.java"


# static fields
.field public static final CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;


# instance fields
.field private final durationMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer$1;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer$1;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->durationMillis:J

    return-void
.end method


# virtual methods
.method public getDurationMillis()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->durationMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->durationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
