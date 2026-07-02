.class public final Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExoPlayerMessage"
.end annotation


# instance fields
.field public final message:Ljava/lang/Object;

.field public final messageType:I

.field public final target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;

    .line 161
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    .line 162
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    return-void
.end method
