.class public final Lcom/google/android/gms/internal/ads/zzejj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeec<",
        "Lcom/google/android/gms/internal/ads/zzcvh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbkg;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfes;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwe;Lcom/google/android/gms/internal/ads/zzfes;Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzbkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejj;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejj;->zzb:Lcom/google/android/gms/internal/ads/zzcwe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejj;->zze:Lcom/google/android/gms/internal/ads/zzfes;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejj;->zzd:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzejj;->zzc:Lcom/google/android/gms/internal/ads/zzbkg;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejj;->zzc:Lcom/google/android/gms/internal/ads/zzbkg;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfae;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzcvh;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzejh;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejj;->zza:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzejf;->zza:Lcom/google/android/gms/internal/ads/zzcxe;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzu:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfaa;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzejh;-><init>(Lcom/google/android/gms/internal/ads/zzejj;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzfaa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejj;->zzb:Lcom/google/android/gms/internal/ads/zzcwe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxv;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzcwe;->zzaa(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzcvo;)Lcom/google/android/gms/internal/ads/zzcvi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkb;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvi;->zzk()Lcom/google/android/gms/internal/ads/zzeji;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzs:Lcom/google/android/gms/internal/ads/zzfae;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfae;->zzb:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfae;->zza:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzbkb;-><init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzejj;->zze:Lcom/google/android/gms/internal/ads/zzfes;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->zzq:Lcom/google/android/gms/internal/ads/zzfem;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzejg;

    .line 7
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzejg;-><init>(Lcom/google/android/gms/internal/ads/zzejj;Lcom/google/android/gms/internal/ads/zzbkb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejj;->zzd:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 8
    invoke-static {v2, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzfed;->zzd(Lcom/google/android/gms/internal/ads/zzfdx;Lcom/google/android/gms/internal/ads/zzfsn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfem;->zzr:Lcom/google/android/gms/internal/ads/zzfem;

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfej;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvi;->zzh()Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfej;->zze(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfej;->zzi()Lcom/google/android/gms/internal/ads/zzfdy;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbkb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejj;->zzc:Lcom/google/android/gms/internal/ads/zzbkg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbkg;->zze(Lcom/google/android/gms/internal/ads/zzbkd;)V

    return-void
.end method
