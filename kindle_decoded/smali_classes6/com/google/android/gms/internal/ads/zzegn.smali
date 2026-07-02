.class public final Lcom/google/android/gms/internal/ads/zzegn;
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
        "Lcom/google/android/gms/internal/ads/zzbxn;",
        "Lcom/google/android/gms/internal/ads/zzefy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdkf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdkf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzb:Lcom/google/android/gms/internal/ads/zzdkf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            "Lcom/google/android/gms/internal/ads/zzeef<",
            "Lcom/google/android/gms/internal/ads/zzbxn;",
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
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbxn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxn;->zzo(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbxn;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzQ:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 5
    new-instance v6, Lcom/google/android/gms/internal/ads/zzegl;

    const/4 p1, 0x0

    .line 4
    invoke-direct {v6, p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzegl;-><init>(Lcom/google/android/gms/internal/ads/zzegn;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzegm;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbvm;

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbxn;->zzj(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxe;Lcom/google/android/gms/internal/ads/zzbvm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;,
            Lcom/google/android/gms/internal/ads/zzehs;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegh;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbxn;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzegh;-><init>(Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzbxn;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zzb:Lcom/google/android/gms/internal/ads/zzdkf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    .line 2
    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdjm;

    const/4 p2, 0x0

    .line 3
    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdjm;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzcml;)V

    .line 4
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdkf;->zzQ(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdjm;)Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzd()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzegh;->zzb(Lcom/google/android/gms/internal/ads/zzdbu;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    .line 6
    check-cast p2, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzg()Lcom/google/android/gms/internal/ads/zzeiy;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzefy;->zzc(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzh()Lcom/google/android/gms/internal/ads/zzdji;

    move-result-object p1

    return-object p1
.end method
