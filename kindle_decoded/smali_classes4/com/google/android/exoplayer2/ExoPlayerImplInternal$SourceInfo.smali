.class public final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceInfo"
.end annotation


# instance fields
.field public final manifest:Ljava/lang/Object;

.field public final playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field public final seekAcks:I

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->manifest:Ljava/lang/Object;

    .line 98
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 99
    iput p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->seekAcks:I

    return-void
.end method
