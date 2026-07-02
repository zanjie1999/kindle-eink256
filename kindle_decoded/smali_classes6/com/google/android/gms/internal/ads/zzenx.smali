.class public final Lcom/google/android/gms/internal/ads/zzenx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzerx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzerx<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:F

.field public final zzh:Z


# direct methods
.method public constructor <init>(IZZIIIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzenx;->zza:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzenx;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzg:F

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzh:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzf(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zza:I

    const-string v1, "am"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzb:Z

    const-string v1, "ma"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzc:Z

    const-string v1, "sp"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzd:I

    const-string v1, "muv"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zze:I

    const-string v1, "rm"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzf:I

    const-string v1, "riv"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzg:F

    const-string v1, "android_app_volume"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzenx;->zzh:Z

    const-string v1, "android_app_muted"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
