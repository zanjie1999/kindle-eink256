.class public final Lcom/google/android/gms/internal/ads/zzdsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzeec<",
        "Lcom/google/android/gms/internal/ads/zzdrw;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzejc<",
            "Lcom/google/android/gms/internal/ads/zzdrw;",
            "Lcom/google/android/gms/internal/ads/zzfbi;",
            "Lcom/google/android/gms/internal/ads/zzefz;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzejc<",
            "Lcom/google/android/gms/internal/ads/zzdrw;",
            "Lcom/google/android/gms/internal/ads/zzfbi;",
            "Lcom/google/android/gms/internal/ads/zzefy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzfar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzejc<",
            "Lcom/google/android/gms/internal/ads/zzdrw;",
            "Lcom/google/android/gms/internal/ads/zzfbi;",
            "Lcom/google/android/gms/internal/ads/zzefz;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzejc<",
            "Lcom/google/android/gms/internal/ads/zzdrw;",
            "Lcom/google/android/gms/internal/ads/zzfbi;",
            "Lcom/google/android/gms/internal/ads/zzefy;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzfar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsc;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdat;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdat;->zza()Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfar;->zzo:Lcom/google/android/gms/internal/ads/zzfah;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfah;->zza:I

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzejd;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejd;->zza()Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzejd;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejd;->zza()Lcom/google/android/gms/internal/ads/zzejc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
