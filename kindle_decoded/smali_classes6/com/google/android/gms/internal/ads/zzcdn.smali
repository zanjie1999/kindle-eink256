.class final synthetic Lcom/google/android/gms/internal/ads/zzcdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcds;

.field private final zzb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcds;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zza:Lcom/google/android/gms/internal/ads/zzcds;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzb:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zza:Lcom/google/android/gms/internal/ads/zzcds;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzb:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcds;->zzi(Landroid/graphics/Bitmap;)V

    return-void
.end method
