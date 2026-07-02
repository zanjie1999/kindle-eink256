.class public final Lcom/google/android/gms/internal/ads/zzdaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdao;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zza:Lcom/google/android/gms/internal/ads/zzdao;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zza:Lcom/google/android/gms/internal/ads/zzdao;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdao;->zzd()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zza:Lcom/google/android/gms/internal/ads/zzdao;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdao;->zzd()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
