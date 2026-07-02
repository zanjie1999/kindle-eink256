.class final synthetic Lcom/google/android/gms/internal/ads/zzeod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzerx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeoe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeoe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeod;->zza:Lcom/google/android/gms/internal/ads/zzeoe;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeod;->zza:Lcom/google/android/gms/internal/ads/zzeoe;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeoe;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
