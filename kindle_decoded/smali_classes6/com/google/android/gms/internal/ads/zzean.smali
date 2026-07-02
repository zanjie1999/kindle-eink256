.class public final Lcom/google/android/gms/internal/ads/zzean;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzeam;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzeao;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzddv;",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzeao;",
            ">;>;>;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzddv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzean;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzean;->zzb:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzean;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeam;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzean;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzglh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzglh;->zzd()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzean;->zzc:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzddw;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzddw;->zza()Lcom/google/android/gms/internal/ads/zzddv;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeam;

    .line 4
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeam;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzddv;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzean;->zza()Lcom/google/android/gms/internal/ads/zzeam;

    move-result-object v0

    return-object v0
.end method
