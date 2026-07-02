.class final synthetic Lcom/google/android/gms/internal/ads/zzbsx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbts;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbtr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbtr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zza:Lcom/google/android/gms/internal/ads/zzbts;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzb:Lcom/google/android/gms/internal/ads/zzbtr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zza:Lcom/google/android/gms/internal/ads/zzbts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzb:Lcom/google/android/gms/internal/ads/zzbtr;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbts;->zzi(Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbtr;)V

    return-void
.end method
