.class final synthetic Lcom/google/android/gms/internal/ads/zzdoa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzb:Landroid/view/View;

.field private final zzc:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdoe;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoa;->zza:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoa;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdoa;->zzc:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoa;->zza:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoa;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoa;->zzc:Landroid/view/WindowManager;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzdoe;->zzb(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzcml;Ljava/util/Map;)V

    return-void
.end method
