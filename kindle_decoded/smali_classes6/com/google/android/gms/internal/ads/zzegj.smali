.class public final Lcom/google/android/gms/internal/ads/zzegj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeek<",
        "Lcom/google/android/gms/internal/ads/zzdji;",
        "Lcom/google/android/gms/internal/ads/zzfbi;",
        "Lcom/google/android/gms/internal/ads/zzefy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdkf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzdkf;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegj;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzc:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/zzdkf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            "Lcom/google/android/gms/internal/ads/zzeef<",
            "Lcom/google/android/gms/internal/ads/zzfbi;",
            "Lcom/google/android/gms/internal/ads/zzefy;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegj;->zza:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzl(Lcom/google/android/gms/internal/ads/zzfae;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbvm;

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfbi;->zzh(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;,
            Lcom/google/android/gms/internal/ads/zzehs;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/zzdkf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdjm;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzegi;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzegi;-><init>(Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzeef;)V

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdjm;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzcml;)V

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdkf;->zzQ(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdjm;)Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zza()Lcom/google/android/gms/internal/ads/zzdcb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsw;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsw;-><init>(Lcom/google/android/gms/internal/ads/zzfbi;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzd:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdgm;->zzi(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    .line 6
    check-cast p2, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzf()Lcom/google/android/gms/internal/ads/zzeje;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzefy;->zzc(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzh()Lcom/google/android/gms/internal/ads/zzdji;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzeef;ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdkm;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p4, p1, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzfbi;->zzs(Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzc:Lcom/google/android/gms/internal/ads/zzcgz;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcgz;->zzc:I

    .line 2
    sget-object p4, Lcom/google/android/gms/internal/ads/zzbjl;->zzau:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p4

    .line 4
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ge p2, p4, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfbi;->zzd()V

    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfbi;->zze(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Cannot show interstitial."

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdkm;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
