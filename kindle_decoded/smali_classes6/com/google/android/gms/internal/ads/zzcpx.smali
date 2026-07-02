.class final Lcom/google/android/gms/internal/ads/zzcpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzewl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqu;

.field private zzb:Landroid/content/Context;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbdl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcqu;Lcom/google/android/gms/internal/ads/zzcql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zza:Lcom/google/android/gms/internal/ads/zzcqu;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzewm;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzb:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzc:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzd:Lcom/google/android/gms/internal/ads/zzbdl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbdl;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgli;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zza:Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzb:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzd:Lcom/google/android/gms/internal/ads/zzbdl;

    const/4 v7, 0x0

    move-object v2, v0

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>(Lcom/google/android/gms/internal/ads/zzcqu;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzcql;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzewl;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzd:Lcom/google/android/gms/internal/ads/zzbdl;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzewl;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzc:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzewl;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpx;->zzb:Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
