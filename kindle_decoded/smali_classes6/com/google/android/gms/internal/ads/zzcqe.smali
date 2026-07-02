.class final Lcom/google/android/gms/internal/ads/zzcqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqu;

.field private zzb:Landroid/content/Context;

.field private zzc:Lcom/google/android/gms/internal/ads/zzbqm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcqu;Lcom/google/android/gms/internal/ads/zzcql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zza:Lcom/google/android/gms/internal/ads/zzcqu;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdwr;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzb:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzc:Lcom/google/android/gms/internal/ads/zzbqm;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbqm;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zza:Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzc:Lcom/google/android/gms/internal/ads/zzbqm;

    const/4 v4, 0x0

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcqf;-><init>(Lcom/google/android/gms/internal/ads/zzcqu;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbqm;Lcom/google/android/gms/internal/ads/zzcql;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbqm;)Lcom/google/android/gms/internal/ads/zzdwq;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzc:Lcom/google/android/gms/internal/ads/zzbqm;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdwq;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzb:Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
