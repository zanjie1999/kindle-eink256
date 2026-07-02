.class public final Lcom/google/android/gms/internal/ads/zzks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzai;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzai;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzao;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzks;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzks;->zzb:Lcom/google/android/gms/internal/ads/zzai;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzaj;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzks;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzks;->zzb:Lcom/google/android/gms/internal/ads/zzai;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzao;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzao;->zzg()Lcom/google/android/gms/internal/ads/zzaq;

    move-result-object v2

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzkt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaj;)V

    return-object v0
.end method
