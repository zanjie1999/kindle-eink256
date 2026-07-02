.class public final Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;
.super Ljava/lang/Object;
.source "BottomSheetRefreshEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final shouldRetryDownload:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;->shouldRetryDownload:Z

    return-void
.end method


# virtual methods
.method public final getShouldRetryDownload()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;->shouldRetryDownload:Z

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
