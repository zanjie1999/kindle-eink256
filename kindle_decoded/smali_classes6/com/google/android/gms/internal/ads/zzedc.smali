.class public final Lcom/google/android/gms/internal/ads/zzedc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzedb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzdai;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzecu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzecq;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/ads/internal/util/zzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzdai;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzecu;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzecq;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/ads/internal/util/zzg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedc;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedc;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedc;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedc;->zzd:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzedc;->zze:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzedb;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedc;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbv;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedc;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdaj;->zza()Lcom/google/android/gms/internal/ads/zzdai;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedc;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzecu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedc;->zzd:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzecr;->zza()Lcom/google/android/gms/internal/ads/zzecq;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedc;->zze:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbu;->zza()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v6

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedb;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzedb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdai;Lcom/google/android/gms/internal/ads/zzecu;Lcom/google/android/gms/internal/ads/zzecq;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedc;->zza()Lcom/google/android/gms/internal/ads/zzedb;

    move-result-object v0

    return-object v0
.end method
