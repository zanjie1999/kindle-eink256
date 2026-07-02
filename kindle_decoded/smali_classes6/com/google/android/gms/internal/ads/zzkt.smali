.class public final Lcom/google/android/gms/internal/ads/zzkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaj;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzay;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaj;

.field private zzd:Lcom/google/android/gms/internal/ads/zzaj;

.field private zze:Lcom/google/android/gms/internal/ads/zzaj;

.field private zzf:Lcom/google/android/gms/internal/ads/zzaj;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaj;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaj;

.field private zzi:Lcom/google/android/gms/internal/ads/zzaj;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaj;

.field private zzk:Lcom/google/android/gms/internal/ads/zzaj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzb:Ljava/util/List;

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/ads/zzaj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zze:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zza:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzkd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zze:Lcom/google/android/gms/internal/ads/zzaj;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzc(Lcom/google/android/gms/internal/ads/zzaj;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zze:Lcom/google/android/gms/internal/ads/zzaj;

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzaj;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzay;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzaj;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaj;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaj;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzd:Lcom/google/android/gms/internal/ads/zzaj;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzay;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zze:Lcom/google/android/gms/internal/ads/zzaj;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzay;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzf:Lcom/google/android/gms/internal/ads/zzaj;

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzay;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzg:Lcom/google/android/gms/internal/ads/zzaj;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzay;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzh:Lcom/google/android/gms/internal/ads/zzaj;

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzay;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzi:Lcom/google/android/gms/internal/ads/zzaj;

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzay;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzj:Lcom/google/android/gms/internal/ads/zzaj;

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzay;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final zzf()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaj;->zzf()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final zzg([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzah;->zzg([BII)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzan;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzb(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzb()Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    goto/16 :goto_4

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzd:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkx;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzkx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzd:Lcom/google/android/gms/internal/ads/zzaj;

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzc(Lcom/google/android/gms/internal/ads/zzaj;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzd:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    goto/16 :goto_4

    :cond_3
    const-string v2, "asset"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzb()Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    goto/16 :goto_4

    :cond_4
    const-string v2, "content"

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzf:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zza:Landroid/content/Context;

    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzkm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzf:Lcom/google/android/gms/internal/ads/zzaj;

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzc(Lcom/google/android/gms/internal/ads/zzaj;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzf:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    goto/16 :goto_4

    :cond_6
    const-string v2, "rtmp"

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzg:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_7

    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    .line 15
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzg:Lcom/google/android/gms/internal/ads/zzaj;

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzc(Lcom/google/android/gms/internal/ads/zzaj;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    .line 18
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzg:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzg:Lcom/google/android/gms/internal/ads/zzaj;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzg:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    goto :goto_4

    :cond_8
    const-string v1, "udp"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzh:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlr;

    const/16 v1, 0x7d0

    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzlr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzh:Lcom/google/android/gms/internal/ads/zzaj;

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzc(Lcom/google/android/gms/internal/ads/zzaj;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzh:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    goto :goto_4

    :cond_a
    const-string v1, "data"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzi:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkn;

    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzkn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzi:Lcom/google/android/gms/internal/ads/zzaj;

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzc(Lcom/google/android/gms/internal/ads/zzaj;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzi:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    goto :goto_4

    :cond_c
    const-string v1, "rawresource"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    .line 28
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    goto :goto_3

    .line 26
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzj:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zza:Landroid/content/Context;

    .line 27
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzj:Lcom/google/android/gms/internal/ads/zzaj;

    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzc(Lcom/google/android/gms/internal/ads/zzaj;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzj:Lcom/google/android/gms/internal/ads/zzaj;

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    .line 8
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    .line 29
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaj;->zzh(Lcom/google/android/gms/internal/ads/zzan;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaj;->zzi()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaj;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzk:Lcom/google/android/gms/internal/ads/zzaj;

    .line 2
    throw v0

    :cond_0
    return-void
.end method
