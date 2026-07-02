.class public interface abstract Lcom/audible/android/kcp/player/manager/AiRPlayerManager;
.super Ljava/lang/Object;
.source "AiRPlayerManager.java"


# static fields
.field public static final JUMP_FORWARD_BACKWARD_DURATION_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->JUMP_FORWARD_BACKWARD_DURATION_MS:I

    return-void
.end method


# virtual methods
.method public abstract addOnPlayerEventListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
.end method

.method public abstract getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
.end method

.method public abstract getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
.end method

.method public abstract getCompanionEbook()Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getCurrentPositionMillis()I
.end method

.method public abstract getPlayerState()Lcom/audible/mobile/player/State;
.end method

.method public abstract handlePlayerResetOnCancelDownload(Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract jumpBackward(I)V
.end method

.method public abstract jumpForward(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract setAudiobookAsin(Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract stop()V
.end method
