.class public final Lcom/google/android/gms/internal/ads/zzdmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzbni;

.field zzb:Lcom/google/android/gms/internal/ads/zzbnf;

.field zzc:Lcom/google/android/gms/internal/ads/zzbnv;

.field zzd:Lcom/google/android/gms/internal/ads/zzbns;

.field zze:Lcom/google/android/gms/internal/ads/zzbsg;

.field final zzf:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbno;",
            ">;"
        }
    .end annotation
.end field

.field final zzg:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbnl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zzf:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zzg:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbni;)Lcom/google/android/gms/internal/ads/zzdmv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zza:Lcom/google/android/gms/internal/ads/zzbni;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbnf;)Lcom/google/android/gms/internal/ads/zzdmv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zzb:Lcom/google/android/gms/internal/ads/zzbnf;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbnv;)Lcom/google/android/gms/internal/ads/zzdmv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zzc:Lcom/google/android/gms/internal/ads/zzbnv;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbns;)Lcom/google/android/gms/internal/ads/zzdmv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zzd:Lcom/google/android/gms/internal/ads/zzbns;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbsg;)Lcom/google/android/gms/internal/ads/zzdmv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zze:Lcom/google/android/gms/internal/ads/zzbsg;

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbno;Lcom/google/android/gms/internal/ads/zzbnl;)Lcom/google/android/gms/internal/ads/zzdmv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zzf:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmv;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {p2, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdmx;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdmx;-><init>(Lcom/google/android/gms/internal/ads/zzdmv;Lcom/google/android/gms/internal/ads/zzdmw;)V

    return-object v0
.end method
