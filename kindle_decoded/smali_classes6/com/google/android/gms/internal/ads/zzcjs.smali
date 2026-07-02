.class public final Lcom/google/android/gms/internal/ads/zzcjs;
.super Lcom/google/android/gms/internal/ads/zzcii;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/zzcir;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcjb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjc;

.field private final zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcja;

.field private zzg:Lcom/google/android/gms/internal/ads/zzcih;

.field private zzh:Landroid/view/Surface;

.field private zzi:Lcom/google/android/gms/internal/ads/zzcis;

.field private zzj:Ljava/lang/String;

.field private zzk:[Ljava/lang/String;

.field private zzl:Z

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzciz;

.field private final zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:I

.field private zzs:I

.field private zzt:I

.field private zzu:I

.field private zzv:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjc;Lcom/google/android/gms/internal/ads/zzcjb;ZZLcom/google/android/gms/internal/ads/zzcja;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcii;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzm:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zze:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzo:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    .line 2
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcjc;->zza(Lcom/google/android/gms/internal/ads/zzcii;)V

    return-void
.end method

.method private final zzR()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzS()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzT(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzj:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzh:Landroid/view/Surface;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzR()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzv()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzU()V

    goto :goto_1

    :cond_3
    const-string p1, "No valid ExoPlayerAdapter exists when switch source."

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzj:Ljava/lang/String;

    const-string v0, "cache:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzj:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcjb;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcla;

    move-result-object p1

    .line 5
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzclj;

    if-eqz v1, :cond_6

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzclj;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzclj;->zzj()Lcom/google/android/gms/internal/ads/zzcis;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzA()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string p1, "Precached video player has been released."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_6
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzclg;

    if-eqz v1, :cond_8

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzclg;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzE()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzclg;->zzc()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzclg;->zzb()Z

    move-result v3

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzclg;->zza()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Stream cache URL is null."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzD()Lcom/google/android/gms/internal/ads/zzcis;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcis;->zzq([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzj:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stream cache miss: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzD()Lcom/google/android/gms/internal/ads/zzcis;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzE()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzk:[Ljava/lang/String;

    .line 22
    array-length v1, v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzk:[Ljava/lang/String;

    .line 23
    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 24
    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 25
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzp([Landroid/net/Uri;Ljava/lang/String;)V

    .line 8
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 26
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcis;->zzr(Lcom/google/android/gms/internal/ads/zzcir;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzh:Landroid/view/Surface;

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzV(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzA()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzB()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzm:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzX()V

    :cond_c
    :goto_5
    return-void
.end method

.method private final zzU()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzV(Landroid/view/Surface;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcis;->zzr(Lcom/google/android/gms/internal/ads/zzcir;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcis;->zzs()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzm:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzq:Z

    :cond_1
    return-void
.end method

.method private final zzV(Landroid/view/Surface;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcis;->zzt(Landroid/view/Surface;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Trying to set surface before player is initialized."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method private final zzW(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcis;->zzu(FZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Trying to set volume before player is initialized."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method private final zzX()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzp:Z

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcjg;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzb()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzq:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzh()V

    :cond_1
    return-void
.end method

.method private static zzY(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzZ()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzr:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzs:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjs;->zzaa(II)V

    return-void
.end method

.method private final zzaa(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzv:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzv:F

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_1
    return-void
.end method

.method private final zzab()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcis;->zzM(Z)V

    :cond_0
    return-void
.end method

.method private final zzac()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcis;->zzM(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzv:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    if-nez v2, :cond_1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v3, v2, v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    div-float/2addr v2, v0

    float-to-int p2, v2

    :cond_0
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzciz;->zzc(II)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzt:I

    if-lez v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzu:I

    if-lez v0, :cond_8

    if-eq v0, p2, :cond_8

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zze:Z

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzR()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzC()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzD()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzW(FZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzE(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzC()J

    move-result-wide v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzR()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcis;->zzC()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_7

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcis;->zzE(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzt()V

    .line 5
    :cond_8
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzt:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzu:I

    :cond_9
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzo:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzciz;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzciz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzciz;->zzb(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzciz;->zze()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzciz;->zzd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    .line 6
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzh:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcjs;->zzT(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcjs;->zzV(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    .line 9
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcja;->zza:Z

    if-nez p1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzab()V

    .line 7
    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzr:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzs:I

    if-nez p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzZ()V

    goto :goto_3

    .line 11
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjs;->zzaa(II)V

    .line 13
    :goto_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcjn;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcjn;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzi()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzciz;->zzd()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzac()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzh:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzh:Landroid/view/Surface;

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjs;->zzV(Landroid/view/Surface;Z)V

    .line 6
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjp;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzciz;->zzc(II)V

    .line 2
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjo;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjo;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzd(Lcom/google/android/gms/internal/ads/zzcii;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zza:Lcom/google/android/gms/internal/ads/zzciv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzciv;->zzb(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzcih;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcjq;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final zzA(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzy(I)V

    :cond_0
    return-void
.end method

.method public final zzB(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzz(I)V

    :cond_0
    return-void
.end method

.method public final zzC()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcji;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcji;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzD()Lcom/google/android/gms/internal/ads/zzcis;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzm:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcmb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzcjb;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcki;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcki;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzcjb;)V

    return-object v0
.end method

.method final zzE()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjb;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzF()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzk()V

    :cond_0
    return-void
.end method

.method final synthetic zzG(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter exception"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzH(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzv(ZJ)V

    return-void
.end method

.method final synthetic zzI(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcih;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic zzJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzh()V

    :cond_0
    return-void
.end method

.method final synthetic zzK(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcih;->zzj(II)V

    :cond_0
    return-void
.end method

.method final synthetic zzL()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zza()V

    :cond_0
    return-void
.end method

.method final synthetic zzM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzd()V

    :cond_0
    return-void
.end method

.method final synthetic zzN()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzc()V

    :cond_0
    return-void
.end method

.method final synthetic zzO(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcih;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zze()V

    :cond_0
    return-void
.end method

.method final synthetic zzQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzb()V

    :cond_0
    return-void
.end method

.method public final zza(ZJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzc:Lcom/google/android/gms/internal/ads/zzcjb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjr;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjr;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzm:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzm:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcja;->zza:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzac()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjc;->zzf()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjf;->zze()V

    .line 5
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjj;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzX()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzc(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzr:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzZ()V

    return-void
.end method

.method public final zzd()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzo:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "ExoPlayer/3"

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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzg:Lcom/google/android/gms/internal/ads/zzcih;

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzw(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzv()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzU()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzc()V

    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcja;->zza:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzab()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcis;->zzE(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zza:Lcom/google/android/gms/internal/ads/zzciv;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzciv;->zza()V

    .line 7
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcjl;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzq:Z

    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzS()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcja;->zza:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzac()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcis;->zzE(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzd:Lcom/google/android/gms/internal/ads/zzcjc;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjc;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zze()V

    .line 6
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcjm;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zzj()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzH()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzC()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcis;->zzw(J)V

    :cond_0
    return-void
.end method

.method public final zzm(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzn:Lcom/google/android/gms/internal/ads/zzciz;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzciz;->zzf(FF)V

    :cond_0
    return-void
.end method

.method public final zzn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzr:I

    return v0
.end method

.method public final zzo()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzs:I

    return v0
.end method

.method public final zzp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzI()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzq()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzJ()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzr()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzK()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzs()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcis;->zzL()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcii;->zzb:Lcom/google/android/gms/internal/ads/zzcjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zzc()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjs;->zzW(FZ)V

    return-void
.end method

.method public final zzu(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcjs;->zzY(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter error: "

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcja;->zza:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzac()V

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcjk;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object p1

    const-string v0, "AdExoPlayerView.onError"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcge;->zzl(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string p1, "onLoadException"

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcjs;->zzY(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter exception: "

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v0

    const-string v1, "AdExoPlayerView.onException"

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzcge;->zzl(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4
    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Lcom/google/android/gms/internal/ads/zzcjs;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzw(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    new-array p2, v0, [Ljava/lang/String;

    aput-object p1, p2, v1

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzk:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    array-length v2, p2

    .line 1
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzk:[Ljava/lang/String;

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzj:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzf:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzcja;->zzn:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzm:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzj:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzT(Z)V

    return-void
.end method

.method public final zzx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzF(I)V

    :cond_0
    return-void
.end method

.method public final zzy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzG(I)V

    :cond_0
    return-void
.end method

.method public final zzz(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjs;->zzi:Lcom/google/android/gms/internal/ads/zzcis;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzx(I)V

    :cond_0
    return-void
.end method
