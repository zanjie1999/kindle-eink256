.class abstract Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$BaseTimerViewUpdater;
.super Ljava/lang/Object;
.source "SleepTimerViewEvent.java"


# instance fields
.field private final accessibilityText:Ljava/lang/String;

.field private final displayText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$BaseTimerViewUpdater;->displayText:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$BaseTimerViewUpdater;->accessibilityText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$BaseTimerViewUpdater;->accessibilityText:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$BaseTimerViewUpdater;->displayText:Ljava/lang/String;

    return-object v0
.end method
