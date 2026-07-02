.class final Lcom/google/android/gms/internal/ads/zzcpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcuj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqu;

.field private zzb:Lcom/google/android/gms/internal/ads/zzdgp;

.field private zzc:Lcom/google/android/gms/internal/ads/zzdao;

.field private zzd:Lcom/google/android/gms/internal/ads/zzexu;

.field private zze:Lcom/google/android/gms/internal/ads/zzewv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcqu;Lcom/google/android/gms/internal/ads/zzcql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zza:Lcom/google/android/gms/internal/ads/zzcqu;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzcuj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzc:Lcom/google/android/gms/internal/ads/zzdao;

    return-object p0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdgp;)Lcom/google/android/gms/internal/ads/zzcuj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzb:Lcom/google/android/gms/internal/ads/zzdgp;

    return-object p0
.end method

.method public final bridge synthetic zzf()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzb:Lcom/google/android/gms/internal/ads/zzdgp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdgp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzc:Lcom/google/android/gms/internal/ads/zzdao;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdao;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zza:Lcom/google/android/gms/internal/ads/zzcqu;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcyl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcyl;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfbp;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzczw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzczw;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdvv;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdvv;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzb:Lcom/google/android/gms/internal/ads/zzdgp;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzc:Lcom/google/android/gms/internal/ads/zzdao;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfbt;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzfbt;-><init>()V

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzd:Lcom/google/android/gms/internal/ads/zzexu;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zze:Lcom/google/android/gms/internal/ads/zzewv;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzcpr;-><init>(Lcom/google/android/gms/internal/ads/zzcqu;Lcom/google/android/gms/internal/ads/zzcyl;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/internal/ads/zzczw;Lcom/google/android/gms/internal/ads/zzdvv;Lcom/google/android/gms/internal/ads/zzdgp;Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzfbt;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzexu;Lcom/google/android/gms/internal/ads/zzewv;Lcom/google/android/gms/internal/ads/zzcql;)V

    return-object v0
.end method

.method public final bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzewv;)Lcom/google/android/gms/internal/ads/zzdak;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zze:Lcom/google/android/gms/internal/ads/zzewv;

    return-object p0
.end method

.method public final bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzexu;)Lcom/google/android/gms/internal/ads/zzdak;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzd:Lcom/google/android/gms/internal/ads/zzexu;

    return-object p0
.end method
