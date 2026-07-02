.class public final Lcom/google/android/gms/internal/ads/zzcig;
.super Lcom/google/android/gms/internal/ads/zzcii;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# static fields
.field private static final zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjb;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcjc;

.field private final zzf:Z

.field private zzg:I

.field private zzh:I

.field private zzi:Landroid/media/MediaPlayer;

.field private zzj:Landroid/net/Uri;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:Lcom/google/android/gms/internal/ads/zzciz;

.field private final zzq:Z

.field private zzr:I

.field private zzs:Lcom/google/android/gms/internal/ads/zzcih;

.field private zzt:Z

.field private zzu:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, -0x3ec

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, -0x3ef

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, -0x3f2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, -0x6e

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x64

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const-string v2, "MEDIA_INFO_UNKNOWN"

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x2bc

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x2bd

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x2be

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x320

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x321

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x322

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x385

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    const/16 v1, 0x386

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjb;ZZLcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzcjc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcii;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzt:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzu:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzd:Lcom/google/android/gms/internal/ads/zzcjb;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzcjc;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzq:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzf:Z

    .line 3
    invoke-virtual {p6, p0}, Lcom/google/android/gms/internal/ads/zzcjc;->zza(Lcom/google/android/gms/internal/ads/zzcii;)V

    return-void
.end method

.method private final zzC()V
    .locals 6

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzj:Landroid/net/Uri;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zzE(Z)V

    const/4 v2, 0x1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzs()Lcom/google/android/gms/ads/internal/overlay/zzw;

    new-instance v3, Landroid/media/MediaPlayer;

    .line 5
    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 6
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 7
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 8
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 10
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 11
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzm:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzq:Z

    if-eqz v3, :cond_2

    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzciz;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzciz;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    .line 13
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzciz;->zzb(Landroid/graphics/SurfaceTexture;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzciz;->zze()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzciz;->zzd()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    .line 15
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 17
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzj:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzt()Lcom/google/android/gms/ads/internal/overlay/zzx;

    new-instance v3, Landroid/view/Surface;

    .line 19
    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 20
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    .line 21
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 22
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 24
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzcig;->zzH(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 16
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzj:Landroid/net/Uri;

    .line 25
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to initialize MediaPlayer at "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 26
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcig;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private final zzD()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzf:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzF()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzG(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzF()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 7
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xfa

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzt()V

    :cond_3
    return-void
.end method

.method private final zzE(Z)V
    .locals 2

    const-string v0, "AdMediaPlayerView release"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzciz;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzH(I)V

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    :cond_1
    return-void
.end method

.method private final zzF()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzg:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzG(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method private final zzH(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzcjc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zzd()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzg:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zze()V

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzg:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/zzcih;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzs:Lcom/google/android/gms/internal/ads/zzcih;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcig;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzt:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcig;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzt:Z

    return p1
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/ads/zzcig;Landroid/media/MediaPlayer;)V
    .locals 12

    const-string v0, "frameRate"

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzd:Lcom/google/android/gms/internal/ads/zzcjb;

    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_a

    .line 5
    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    const/16 v6, 0x1e

    const/4 v7, 0x1

    const-string v8, "codecs-string"

    const-string v9, "mime"

    if-eq v5, v7, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 8
    invoke-virtual {v4, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v4, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "audioMime"

    .line 10
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_9

    .line 11
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 12
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audioCodec"

    .line 13
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 14
    :cond_4
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v5, "frame-rate"

    .line 15
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 16
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 18
    :catch_0
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    const-string v5, "bitrate"

    .line 20
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 21
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzu:Ljava/lang/Integer;

    .line 22
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "bitRate"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v5, "width"

    .line 23
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "height"

    .line 24
    invoke-virtual {v4, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 25
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 26
    invoke-virtual {v4, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x17

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "resolution"

    .line 27
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_7
    invoke-virtual {v4, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 29
    invoke-virtual {v4, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "videoMime"

    .line 30
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_9

    .line 31
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 32
    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "videoCodec"

    .line 33
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 34
    :cond_a
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzd:Lcom/google/android/gms/internal/ads/zzcjb;

    const-string p1, "onMetadataEvent"

    .line 35
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzm:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "AdMediaPlayerView completion"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzH(I)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    .line 3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzchz;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x26

    add-int/2addr p3, v0

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    const/4 p3, -0x1

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzcig;->zzH(I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    .line 5
    sget-object p3, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcia;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcia;-><init>(Lcom/google/android/gms/internal/ads/zzcig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Ljava/util/Map;

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x25

    add-int/2addr p3, v0

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    .line 2
    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    if-nez v2, :cond_9

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_2

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    .line 11
    div-int v0, v1, v2

    :goto_0
    move v1, p2

    goto :goto_4

    :cond_0
    if-le v1, v3, :cond_5

    .line 12
    div-int v1, v3, v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    :cond_2
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    .line 7
    div-int/2addr v0, v2

    if-ne v1, v3, :cond_3

    if-le v0, p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_1
    move v0, p1

    goto :goto_4

    :cond_4
    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    .line 8
    div-int/2addr v1, v2

    if-ne v0, v3, :cond_6

    if-le v1, p1, :cond_6

    :cond_5
    :goto_2
    move v0, p1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    if-ne v1, v3, :cond_8

    if-le v4, p2, :cond_8

    mul-int v1, p2, v2

    .line 9
    div-int/2addr v1, v4

    goto :goto_3

    :cond_8
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_6

    if-le v1, p1, :cond_6

    mul-int v4, v4, p1

    .line 10
    div-int v1, v4, v2

    goto :goto_1

    .line 13
    :cond_9
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    if-eqz p1, :cond_a

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzciz;->zzc(II)V

    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_e

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzn:I

    if-lez p1, :cond_b

    if-ne p1, v0, :cond_c

    :cond_b
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzo:I

    if-lez p1, :cond_d

    if-eq p1, v1, :cond_d

    .line 15
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzD()V

    :cond_d
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzn:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzo:I

    :cond_e
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string v0, "AdMediaPlayerView prepared"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzH(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzb()V

    .line 4
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzchy;-><init>(Lcom/google/android/gms/internal/ads/zzcig;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    .line 6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzr:I

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzl(I)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzD()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzh()V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzt()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "AdMediaPlayerView surface created"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzC()V

    .line 3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcib;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcib;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "AdMediaPlayerView surface destroyed"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzr:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzr:I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzciz;->zzd()V

    .line 4
    :cond_1
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcid;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcid;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzE(Z)V

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string p1, "AdMediaPlayerView surface changed"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    if-ne v0, p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-eqz v1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzr:I

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzl(I)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzh()V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzciz;->zzc(II)V

    .line 5
    :cond_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcic;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcic;-><init>(Lcom/google/android/gms/internal/ads/zzcig;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzcjc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzd(Lcom/google/android/gms/internal/ads/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zza:Lcom/google/android/gms/internal/ads/zzciv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzs:Lcom/google/android/gms/internal/ads/zzcih;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzciv;->zzb(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzcih;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzl:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzk:I

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzchx;-><init>(Lcom/google/android/gms/internal/ads/zzcig;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzcig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzq:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "MediaPlayer"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzcih;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzs:Lcom/google/android/gms/internal/ads/zzcih;

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayn;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzayn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayn;->zza:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzayn;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzj:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzr:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzC()V

    .line 5
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    return-void
.end method

.method public final zzg()V
    .locals 1

    const-string v0, "AdMediaPlayerView stop"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzH(I)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzc()V

    return-void
.end method

.method public final zzh()V
    .locals 3

    const-string v0, "AdMediaPlayerView play"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzF()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zzH(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zza:Lcom/google/android/gms/internal/ads/zzciv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzciv;->zza()V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcie;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcie;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    return-void
.end method

.method public final zzi()V
    .locals 3

    const-string v0, "AdMediaPlayerView pause"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzF()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zzH(I)V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcif;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcif;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzh:I

    return-void
.end method

.method public final zzj()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzk()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzr:I

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzr:I

    return-void
.end method

.method public final zzm(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzp:Lcom/google/android/gms/internal/ads/zzciz;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzciz;->zzf(FF)V

    :cond_0
    return-void
.end method

.method public final zzn()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzu:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzr()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzm:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzq()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzr()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzu:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzj()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzu:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzs()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcig;->zzF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzi:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "android.media.mediaplayer.dropped"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zzc()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzG(F)V

    return-void
.end method

.method final synthetic zzv(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzs:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcih;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method
