.class public final Lcom/google/android/gms/internal/ads/zzegy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeek;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeek<",
        "Lcom/google/android/gms/internal/ads/zzdmh;",
        "Lcom/google/android/gms/internal/ads/zzfbi;",
        "Lcom/google/android/gms/internal/ads/zzefy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdlb;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdlb;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegy;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegy;->zzb:Lcom/google/android/gms/internal/ads/zzdlb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegy;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static final zzc(Lcom/google/android/gms/internal/ads/zzfal;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfar;->zzg:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 9
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

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegy;->zza:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzv:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzl(Lcom/google/android/gms/internal/ads/zzfae;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbvm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzi:Lcom/google/android/gms/internal/ads/zzblv;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzg:Ljava/util/ArrayList;

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfbi;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;Lcom/google/android/gms/internal/ads/zzblv;Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzeef;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;,
            Lcom/google/android/gms/internal/ads/zzehs;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbi;->zzB()Lcom/google/android/gms/internal/ads/zzbvr;

    move-result-object v0

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 2
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfbi;->zzC()Lcom/google/android/gms/internal/ads/zzbvs;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfbi;->zzu()Lcom/google/android/gms/internal/ads/zzbvv;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzegy;->zzc(Lcom/google/android/gms/internal/ads/zzfal;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdmm;->zzaa(Lcom/google/android/gms/internal/ads/zzbvv;)Lcom/google/android/gms/internal/ads/zzdmm;

    move-result-object v4

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzegy;->zzc(Lcom/google/android/gms/internal/ads/zzfal;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzad(Lcom/google/android/gms/internal/ads/zzbvr;)Lcom/google/android/gms/internal/ads/zzdmm;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v5, 0x2

    .line 6
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzegy;->zzc(Lcom/google/android/gms/internal/ads/zzfal;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzac(Lcom/google/android/gms/internal/ads/zzbvr;)Lcom/google/android/gms/internal/ads/zzdmm;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzegy;->zzc(Lcom/google/android/gms/internal/ads/zzfal;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdmm;->zzae(Lcom/google/android/gms/internal/ads/zzbvs;)Lcom/google/android/gms/internal/ads/zzdmm;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 8
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzegy;->zzc(Lcom/google/android/gms/internal/ads/zzfal;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdmm;->zzab(Lcom/google/android/gms/internal/ads/zzbvs;)Lcom/google/android/gms/internal/ads/zzdmm;

    move-result-object v4

    .line 15
    :goto_0
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzfal;->zza:Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfai;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfar;->zzg:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdmm;->zzv()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegy;->zzb:Lcom/google/android/gms/internal/ads/zzdlb;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzeef;->zza:Ljava/lang/String;

    .line 18
    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmy;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/zzdmy;-><init>(Lcom/google/android/gms/internal/ads/zzdmm;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdol;

    const/4 v4, 0x0

    invoke-direct {p2, v1, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdol;-><init>(Lcom/google/android/gms/internal/ads/zzbvs;Lcom/google/android/gms/internal/ads/zzbvr;Lcom/google/android/gms/internal/ads/zzbvv;[B)V

    .line 19
    invoke-virtual {v3, v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzdlb;->zzU(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdmy;Lcom/google/android/gms/internal/ads/zzdol;)Lcom/google/android/gms/internal/ads/zzdmo;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/internal/ads/zzdcm;

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzf()Lcom/google/android/gms/internal/ads/zzeje;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzefy;->zzc(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zza()Lcom/google/android/gms/internal/ads/zzdcb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsw;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    .line 22
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfbi;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzcsw;-><init>(Lcom/google/android/gms/internal/ads/zzfbi;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzegy;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzdgm;->zzi(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmp;->zzh()Lcom/google/android/gms/internal/ads/zzdmh;

    move-result-object p1

    return-object p1

    .line 15
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const-string p2, "No corresponding native ad listener"

    .line 17
    invoke-direct {p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const-string p2, "No native ad mappers"

    .line 9
    invoke-direct {p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    throw p1
.end method
