.class public final Lcom/google/android/gms/internal/ads/zzdko;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcq;
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzazj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzazj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzc:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdko;->zze:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzf:Lcom/google/android/gms/internal/ads/zzazj;

    return-void
.end method


# virtual methods
.method public final zzbp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzc:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzbq()V
    .locals 0

    return-void
.end method

.method public final zzbr()V
    .locals 0

    return-void
.end method

.method public final zzbs(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdko;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.method public final zzd()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzf:Lcom/google/android/gms/internal/ads/zzazj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzh:Lcom/google/android/gms/internal/ads/zzazj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzd:Lcom/google/android/gms/internal/ads/zzazj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzk:Lcom/google/android/gms/internal/ads/zzazj;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzP:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzc:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzb:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzk;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zze:Lcom/google/android/gms/internal/ads/zzcgz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zzb:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zzc:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    .line 3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzR:Lcom/google/android/gms/internal/ads/zzfau;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfau;->zza()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzR:Lcom/google/android/gms/internal/ads/zzfau;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfau;->zzb()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->zzc:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzm;->zzb:Lcom/google/android/gms/internal/ads/zzbzm;

    move-object v10, v0

    move-object v9, v1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzU:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzm;->zzd:Lcom/google/android/gms/internal/ads/zzbzm;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzm;->zza:Lcom/google/android/gms/internal/ads/zzbzm;

    .line 10
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzl;->zza:Lcom/google/android/gms/internal/ads/zzbzl;

    move-object v9, v0

    move-object v10, v1

    .line 11
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbzk;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzc:Lcom/google/android/gms/internal/ads/zzcml;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzG()Landroid/webkit/WebView;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzd:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzai:Ljava/lang/String;

    const-string v6, ""

    const-string v7, "javascript"

    .line 13
    invoke-interface/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzbzk;->zzd(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdko;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzc:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzk;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzc:Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdko;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcml;->zzak(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdko;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzk;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzc:Lcom/google/android/gms/internal/ads/zzcml;

    .line 17
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
