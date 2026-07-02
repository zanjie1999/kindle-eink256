.class final Lcom/google/android/gms/internal/ads/zzfim;
.super Lcom/google/android/gms/internal/ads/zzfij;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfij;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfij;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfim;->zza:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null clientVersion"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzfij;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfim;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/ads/zzfij;
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfim;->zzc:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfik;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfim;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfim;->zzb:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfim;->zzc:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfio;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfim;->zzc:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfio;-><init>(Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzfin;)V

    return-object v2

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfim;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " clientVersion"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfim;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    const-string v1, " shouldGetAdvertisingId"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfim;->zzc:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    const-string v1, " isGooglePlayServicesAvailable"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
