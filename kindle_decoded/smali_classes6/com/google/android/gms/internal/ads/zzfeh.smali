.class final synthetic Lcom/google/android/gms/internal/ads/zzfeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfej;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfej;Lcom/google/android/gms/internal/ads/zzfdy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zza:Lcom/google/android/gms/internal/ads/zzfej;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zza:Lcom/google/android/gms/internal/ads/zzfej;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfej;->zza:Lcom/google/android/gms/internal/ads/zzfek;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfek;->zzd(Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfel;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfel;->zzb(Lcom/google/android/gms/internal/ads/zzfdy;)V

    return-void
.end method
