.class public Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;
.super Ljava/lang/Object;
.source "PlaybackPositionChangedEvent.java"


# instance fields
.field private position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;->position:I

    return-void
.end method


# virtual methods
.method public final getPosition()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;->position:I

    return v0
.end method
