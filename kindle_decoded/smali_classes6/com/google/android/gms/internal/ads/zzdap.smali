.class public final Lcom/google/android/gms/internal/ads/zzdap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdao;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdao;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdap;->zza:Lcom/google/android/gms/internal/ads/zzdao;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zza:Lcom/google/android/gms/internal/ads/zzdao;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfbv;->zza()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdao;->zze(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
