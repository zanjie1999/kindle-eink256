.class final Lcom/google/android/gms/internal/ads/zzdot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfln<",
        "Lcom/google/android/gms/internal/ads/zzvy;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:D

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzdou;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdou;DZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzc:Lcom/google/android/gms/internal/ads/zzdou;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdot;->zza:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzc:Lcom/google/android/gms/internal/ads/zzdou;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvy;->zzb:[B

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zza:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzb:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdou;->zzb(Lcom/google/android/gms/internal/ads/zzdou;[BDZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
