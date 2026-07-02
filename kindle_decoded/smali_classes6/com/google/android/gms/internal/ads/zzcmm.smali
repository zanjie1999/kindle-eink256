.class final synthetic Lcom/google/android/gms/internal/ads/zzcmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcms;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcdy;

.field private final zzd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcms;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcdy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zza:Lcom/google/android/gms/internal/ads/zzcms;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zzc:Lcom/google/android/gms/internal/ads/zzcdy;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zzd:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zza:Lcom/google/android/gms/internal/ads/zzcms;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zzc:Lcom/google/android/gms/internal/ads/zzcdy;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zzd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcms;->zzK(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcdy;I)V

    return-void
.end method
