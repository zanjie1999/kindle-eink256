.class public final Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealEndOfChapterTimer;
.super Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$BaseTimerViewUpdater;
.source "SleepTimerViewEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$BaseTimerViewUpdater;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 105
    const-class v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealEndOfChapterTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
