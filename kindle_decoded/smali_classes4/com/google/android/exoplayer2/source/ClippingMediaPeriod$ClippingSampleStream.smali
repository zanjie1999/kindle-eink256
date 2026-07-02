.class final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field private final endUs:J

.field private final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private pendingDiscontinuity:Z

.field private sentEos:Z

.field private final startUs:J

.field private final stream:Lcom/google/android/exoplayer2/source/SampleStream;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;JJZ)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 238
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 239
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    .line 240
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    .line 241
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lcom/google/android/exoplayer2/source/SampleStream;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    return-object p0
.end method


# virtual methods
.method public clearPendingDiscontinuity()V
    .locals 1

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    return-void
.end method

.method public clearSentEos()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->isReady()Z

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

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 10

    .line 265
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/Buffer;->setFlags(I)V

    return v3

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    .line 274
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long p3, v4, v6

    if-eqz p3, :cond_4

    if-ne p1, v3, :cond_2

    iget-wide v8, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long p3, v8, v4

    if-gez p3, :cond_3

    :cond_2
    if-ne p1, v1, :cond_4

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 276
    invoke-interface {p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    cmp-long p3, v0, v6

    if-nez p3, :cond_4

    .line 277
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 278
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/Buffer;->setFlags(I)V

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return v3

    :cond_4
    if-ne p1, v3, :cond_5

    .line 282
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result p3

    if-nez p3, :cond_5

    .line 283
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    :cond_5
    return p1
.end method

.method public skipData(J)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)V

    return-void
.end method
