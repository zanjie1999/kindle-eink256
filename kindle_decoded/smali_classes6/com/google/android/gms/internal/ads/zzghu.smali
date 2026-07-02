.class final Lcom/google/android/gms/internal/ads/zzghu;
.super Lcom/google/android/gms/internal/ads/zzgep;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzghx;

.field zzb:Lcom/google/android/gms/internal/ads/zzger;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzghy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzghy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghu;->zzc:Lcom/google/android/gms/internal/ads/zzghy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgep;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzghx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghu;->zzc:Lcom/google/android/gms/internal/ads/zzghy;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzghx;-><init>(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzghw;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghu;->zza:Lcom/google/android/gms/internal/ads/zzghx;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzghu;->zzb()Lcom/google/android/gms/internal/ads/zzger;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghu;->zzb:Lcom/google/android/gms/internal/ads/zzger;

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/ads/zzger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghu;->zza:Lcom/google/android/gms/internal/ads/zzghx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghx;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghu;->zza:Lcom/google/android/gms/internal/ads/zzghx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghx;->zza()Lcom/google/android/gms/internal/ads/zzges;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzq()Lcom/google/android/gms/internal/ads/zzger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghu;->zzb:Lcom/google/android/gms/internal/ads/zzger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghu;->zzb:Lcom/google/android/gms/internal/ads/zzger;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzger;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghu;->zzb:Lcom/google/android/gms/internal/ads/zzger;

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzghu;->zzb()Lcom/google/android/gms/internal/ads/zzger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzghu;->zzb:Lcom/google/android/gms/internal/ads/zzger;

    :cond_0
    return v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
