.class final Lcom/google/android/gms/internal/ads/zzeai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcfa;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeai;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeai;->zzb:Lcom/google/android/gms/internal/ads/zzcfa;

    return-void
.end method


# virtual methods
.method public final zzbG(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzfal;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfac;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeai;->zzb:Lcom/google/android/gms/internal/ads/zzcfa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeai;->zza:Landroid/content/Context;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfa;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeai;->zzb:Lcom/google/android/gms/internal/ads/zzcfa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeai;->zza:Landroid/content/Context;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfac;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcfa;->zzp(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
