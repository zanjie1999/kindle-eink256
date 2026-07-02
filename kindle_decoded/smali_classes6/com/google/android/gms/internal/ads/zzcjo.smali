.class final synthetic Lcom/google/android/gms/internal/ads/zzcjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjs;

.field private final zzb:I

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjs;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zza:Lcom/google/android/gms/internal/ads/zzcjs;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zza:Lcom/google/android/gms/internal/ads/zzcjs;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcjs;->zzK(II)V

    return-void
.end method
