.class public Lcom/audible/hushpuppy/common/event/servicescallback/PlayNarrationRateChangedEvent;
.super Ljava/lang/Object;
.source "PlayNarrationRateChangedEvent.java"


# instance fields
.field private narrationRate:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayNarrationRateChangedEvent;->narrationRate:F

    return-void
.end method


# virtual methods
.method public final getNarrationRate()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayNarrationRateChangedEvent;->narrationRate:F

    return v0
.end method
