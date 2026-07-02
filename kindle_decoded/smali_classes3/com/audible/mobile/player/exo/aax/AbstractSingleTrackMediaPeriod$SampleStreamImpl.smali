.class final Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "AbstractSingleTrackMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$1;)V
    .locals 0

    .line 490
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;-><init>(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->access$400(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->access$500(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-static {v0, p1, p2, p3}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->access$600(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    return p1
.end method

.method public skipData(J)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$SampleStreamImpl;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-static {v0, p1, p2}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->access$700(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;J)V

    return-void
.end method
