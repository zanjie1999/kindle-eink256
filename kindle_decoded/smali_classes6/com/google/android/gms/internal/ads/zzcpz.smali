.class public final Lcom/google/android/gms/internal/ads/zzcpz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcom;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcqw;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfew;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcrh;

.field private zze:Lcom/google/android/gms/internal/ads/zzfbn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcom;)Lcom/google/android/gms/internal/ads/zzcpz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcqw;)Lcom/google/android/gms/internal/ads/zzcpz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzb:Lcom/google/android/gms/internal/ads/zzcqw;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcoj;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcom;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzb:Lcom/google/android/gms/internal/ads/zzcqw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcqw;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzc:Lcom/google/android/gms/internal/ads/zzfew;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfew;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzc:Lcom/google/android/gms/internal/ads/zzfew;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzd:Lcom/google/android/gms/internal/ads/zzcrh;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcrh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzd:Lcom/google/android/gms/internal/ads/zzcrh;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zze:Lcom/google/android/gms/internal/ads/zzfbn;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfbn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zze:Lcom/google/android/gms/internal/ads/zzfbn;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzb:Lcom/google/android/gms/internal/ads/zzcqw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzc:Lcom/google/android/gms/internal/ads/zzfew;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zzd:Lcom/google/android/gms/internal/ads/zzcrh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcpz;->zze:Lcom/google/android/gms/internal/ads/zzfbn;

    const/4 v7, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcqu;-><init>(Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzfew;Lcom/google/android/gms/internal/ads/zzcrh;Lcom/google/android/gms/internal/ads/zzfbn;Lcom/google/android/gms/internal/ads/zzcql;)V

    return-object v0
.end method
