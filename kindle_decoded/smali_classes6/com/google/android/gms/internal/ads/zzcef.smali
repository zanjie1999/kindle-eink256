.class final Lcom/google/android/gms/internal/ads/zzcef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/common/util/Clock;

.field private zzc:Lcom/google/android/gms/ads/internal/util/zzg;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcfa;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzceg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcef;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->zza:Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/common/util/Clock;)Lcom/google/android/gms/internal/ads/zzcef;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzb:Lcom/google/android/gms/common/util/Clock;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/util/zzg;)Lcom/google/android/gms/internal/ads/zzcef;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcfa;)Lcom/google/android/gms/internal/ads/zzcef;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzd:Lcom/google/android/gms/internal/ads/zzcfa;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzcfb;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->zza:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzb:Lcom/google/android/gms/common/util/Clock;

    const-class v1, Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    const-class v1, Lcom/google/android/gms/ads/internal/util/zzg;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzd:Lcom/google/android/gms/internal/ads/zzcfa;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcfa;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzceh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcef;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzb:Lcom/google/android/gms/common/util/Clock;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcef;->zzd:Lcom/google/android/gms/internal/ads/zzcfa;

    const/4 v7, 0x0

    move-object v2, v0

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzcfa;Lcom/google/android/gms/internal/ads/zzceg;)V

    return-object v0
.end method
