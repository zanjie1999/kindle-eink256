.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;
.super Lcom/google/android/gms/internal/ads/zzcfm;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field protected static final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic zze:I


# instance fields
.field private final zzA:Lcom/google/android/gms/internal/ads/zzcgz;

.field private zzB:Ljava/lang/String;

.field private final zzC:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcoj;

.field private zzg:Landroid/content/Context;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzaas;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfbj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfbj<",
            "Lcom/google/android/gms/internal/ads/zzdrh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzk:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzl:Lcom/google/android/gms/internal/ads/zzcam;

.field private zzm:Landroid/graphics/Point;

.field private zzn:Landroid/graphics/Point;

.field private final zzo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final zzp:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzffc;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zzt:Z

.field private final zzu:Z

.field private final zzv:Z

.field private final zzw:Z

.field private final zzx:Ljava/lang/String;

.field private final zzy:Ljava/lang/String;

.field private final zzz:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "/aclk"

    const-string v2, "/pcs/click"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zza:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".googleadservices.com"

    const-string v2, ".doubleclick.net"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "/pagead/adview"

    const-string v4, "/pcs/view"

    const-string v5, "/pagead/conversion"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v3, ".googlesyndication.com"

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzd:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzfbj;Lcom/google/android/gms/internal/ads/zzfsn;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzffc;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcoj;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzaas;",
            "Lcom/google/android/gms/internal/ads/zzfbj<",
            "Lcom/google/android/gms/internal/ads/zzdrh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzdvi;",
            "Lcom/google/android/gms/internal/ads/zzffc;",
            "Lcom/google/android/gms/internal/ads/zzffu;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfm;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzm:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzn:Landroid/graphics/Point;

    new-instance v0, Ljava/util/WeakHashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzo:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzz:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzcoj;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzh:Lcom/google/android/gms/internal/ads/zzaas;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzi:Lcom/google/android/gms/internal/ads/zzfbj;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzw()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzp:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    iput-object p7, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzq:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p8, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzr:Lcom/google/android/gms/internal/ads/zzffc;

    iput-object p9, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p10, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzA:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfr:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzt:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfq:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzu:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfs:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzv:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfu:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzw:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzft:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzx:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfv:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzy:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfw:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzC:Ljava/lang/String;

    return-void
.end method

.method static final synthetic zzF(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nas"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzL(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static final synthetic zzG(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzw(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "nas"

    .line 5
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzL(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static zzH(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private final zzI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzcoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoj;->zzu()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdam;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdam;-><init>()V

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdam;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdam;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfap;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfap;-><init>()V

    if-nez p2, :cond_0

    const-string p2, "adUnitId"

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfap;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfap;

    if-nez p5, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdh;

    .line 4
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbdh;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbdh;->zza()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p5

    .line 5
    :cond_1
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/ads/zzfap;->zzr(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/zzfap;

    if-nez p4, :cond_2

    .line 6
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>()V

    :cond_2
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzfap;->zzt(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzfap;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfap;->zzL()Lcom/google/android/gms/internal/ads/zzfar;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdam;->zzf(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdam;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdam;->zzh()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    new-instance p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;

    invoke-direct {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;-><init>()V

    .line 10
    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;

    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;

    const/4 p3, 0x0

    .line 11
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;)V

    .line 10
    invoke-interface {v0, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>()V

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;

    move-result-object p1

    return-object p1
.end method

.method private final zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdrh;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzi:Lcom/google/android/gms/internal/ads/zzfbj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfbj;->zzb()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;[Lcom/google/android/gms/internal/ads/zzdrh;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;

    .line 3
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;[Lcom/google/android/gms/internal/ads/zzdrh;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfy:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfru;

    sget-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzn;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    const-class v0, Ljava/lang/Exception;

    sget-object v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzf(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method private final zzK()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzcam;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcam;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final zzL(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&adurl="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "?adurl="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzp:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Lcom/google/android/gms/internal/ads/zzffu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzffu;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzt:Z

    return p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzu:Z

    return p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzv:Z

    return p0
.end method

.method static synthetic zzo(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzw:Z

    return p0
.end method

.method static synthetic zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzx:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzq(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzy:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzr(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzz:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic zzs(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzA:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method static synthetic zzt(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzu(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzv(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzC:Ljava/lang/String;

    return-object p0
.end method

.method static zzw(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzc:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzd:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzH(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzx(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    const-string p0, "1"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzL(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgi:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzr:Lcom/google/android/gms/internal/ads/zzffc;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzffc;->zza(Lcom/google/android/gms/internal/ads/zzffb;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzq:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvi;->zzd()Lcom/google/android/gms/internal/ads/zzdvh;

    move-result-object p0

    const-string v0, "action"

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvh;->zze()V

    return-void
.end method


# virtual methods
.method final synthetic zzA([Lcom/google/android/gms/internal/ads/zzdrh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrh;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aput-object p3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzcam;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcam;->zzb:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcam;->zza:Landroid/view/View;

    .line 2
    invoke-static {p1, v1, v1, v0}, Lcom/google/android/gms/ads/internal/util/zzca;->zze(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzcam;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcam;->zza:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzca;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzcam;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcam;->zza:Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzca;->zzc(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzcam;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcam;->zza:Landroid/view/View;

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/util/zzca;->zzd(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "asset_view_signal"

    .line 8
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ad_view_signal"

    .line 9
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 10
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 11
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzn:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzm:Landroid/graphics/Point;

    .line 12
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzca;->zzf(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "click_signal"

    .line 13
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_0
    invoke-virtual {p3, p2, v3}, Lcom/google/android/gms/internal/ads/zzdrh;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzB(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzC(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzh:Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzaas;->zze(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaat; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, ""

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "ms"

    .line 4
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to append spam signals to click url."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final synthetic zzD(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzl;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzE(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzh:Lcom/google/android/gms/internal/ads/zzaas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaas;->zzb()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzh:Lcom/google/android/gms/internal/ads/zzaas;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaas;->zzb()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzaao;->zzo(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 4
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzw(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not a Google URL: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "ms"

    .line 11
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzL(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Empty impression URLs result."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to get view signals."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcfr;Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    .line 2
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzcfr;->zza:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzcfr;->zzb:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzcfr;->zzc:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzcfr;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;

    .line 5
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Lcom/google/android/gms/internal/ads/zzcfk;)V

    iget-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 5
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfx:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzcam;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcam;->zza:Landroid/view/View;

    .line 4
    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzca;->zzh(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzm:Landroid/graphics/Point;

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzm:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzn:Landroid/graphics/Point;

    .line 6
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzm:Landroid/graphics/Point;

    .line 7
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzh:Lcom/google/android/gms/internal/ads/zzaas;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaas;->zzd(Landroid/view/MotionEvent;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zzg(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzcaf;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfx:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p1, "The updating URL feature is not enabled."

    .line 3
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzf(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzh;

    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzh;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzK()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzi;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzi;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 9
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "Asset view map is empty."

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    .line 9
    :goto_0
    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;

    .line 11
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzs;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Lcom/google/android/gms/internal/ads/zzcaf;)V

    iget-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 11
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzh(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzcaf;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfx:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The updating URL feature is not enabled."

    .line 3
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzf(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string p1, "There should be only 1 click URL."

    .line 5
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzf(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget-object v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zza:Ljava/util/List;

    sget-object v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzb:Ljava/util/List;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzH(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Not a Google URL: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 17
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zze(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;

    .line 8
    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 9
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzK()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzk;

    .line 11
    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzk;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzj:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 12
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p2, "Asset view map is empty."

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    .line 12
    :goto_0
    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzt;

    .line 14
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzt;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Lcom/google/android/gms/internal/ads/zzcaf;)V

    iget-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 14
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcam;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzcam;

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzi:Lcom/google/android/gms/internal/ads/zzfbj;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfbj;->zza(I)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgH:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string p1, "Not registering the webview because the Android API level is lower than Lollopop which has security risks on webviews."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgI:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg:Landroid/content/Context;

    .line 6
    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzu;

    .line 10
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzu;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzcoj;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcoj;->zze()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    .line 12
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    if-nez p1, :cond_3

    const-string p1, "The webView cannot be null."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzo:Ljava/util/Set;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "This webview has already been registered."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzo:Ljava/util/Set;

    .line 16
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzh:Lcom/google/android/gms/internal/ads/zzaas;

    .line 17
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;-><init>(Landroid/webkit/WebView;Lcom/google/android/gms/internal/ads/zzaas;)V

    const-string v1, "gmaSdk"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzz([Lcom/google/android/gms/internal/ads/zzdrh;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzi:Lcom/google/android/gms/internal/ads/zzfbj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfbj;->zzc(Lcom/google/android/gms/internal/ads/zzfsm;)V

    :cond_0
    return-void
.end method
