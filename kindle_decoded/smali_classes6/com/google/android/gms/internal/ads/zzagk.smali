.class public final Lcom/google/android/gms/internal/ads/zzagk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zzb:Ljava/lang/String;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzagj;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzagh;

.field public final zze:Lcom/google/android/gms/internal/ads/zzago;

.field public final zzf:Lcom/google/android/gms/internal/ads/zzagd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzagb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagb;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagb;->zzc()Lcom/google/android/gms/internal/ads/zzagk;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzafz;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzagd;Lcom/google/android/gms/internal/ads/zzagj;Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzago;Lcom/google/android/gms/internal/ads/zzagi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzc:Lcom/google/android/gms/internal/ads/zzagj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzd:Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzagk;->zze:Lcom/google/android/gms/internal/ads/zzago;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzf:Lcom/google/android/gms/internal/ads/zzagd;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzagk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzagk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzb:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzagk;->zzb:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzf:Lcom/google/android/gms/internal/ads/zzagd;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzagk;->zzf:Lcom/google/android/gms/internal/ads/zzagd;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzagd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzc:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzagk;->zzc:Lcom/google/android/gms/internal/ads/zzagj;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzd:Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzagk;->zzd:Lcom/google/android/gms/internal/ads/zzagh;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zze:Lcom/google/android/gms/internal/ads/zzago;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzagk;->zze:Lcom/google/android/gms/internal/ads/zzago;

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzc:Lcom/google/android/gms/internal/ads/zzagj;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagj;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzd:Lcom/google/android/gms/internal/ads/zzagh;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzf:Lcom/google/android/gms/internal/ads/zzagd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zze:Lcom/google/android/gms/internal/ads/zzago;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzago;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
