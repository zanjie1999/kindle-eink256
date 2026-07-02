.class public final Lcom/google/android/gms/internal/ads/zzfzd;
.super Lcom/google/android/gms/internal/ads/zzgfw;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgfw<",
        "Lcom/google/android/gms/internal/ads/zzfze;",
        "Lcom/google/android/gms/internal/ads/zzfzd;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfze;->zzf()Lcom/google/android/gms/internal/ads/zzfze;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfzc;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfze;->zzf()Lcom/google/android/gms/internal/ads/zzfze;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfze;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfze;->zzg(Lcom/google/android/gms/internal/ads/zzfze;I)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfze;->zzh(Lcom/google/android/gms/internal/ads/zzfze;Lcom/google/android/gms/internal/ads/zzgex;)V

    return-object p0
.end method
