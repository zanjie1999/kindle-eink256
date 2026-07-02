.class public final Lcom/google/android/gms/internal/ads/zzaia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzahy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaku;

.field private zzd:Lcom/google/android/gms/internal/ads/zzjz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhq;

.field private zzf:Lcom/google/android/gms/internal/ads/zzafy;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzki;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcy;

.field private final zzi:Landroid/os/Looper;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzg;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzahz;

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzadz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzahy;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zznq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zznq;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzoa;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaea;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaea;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkr;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzkr;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcy;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaku;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzcy;-><init>(Lcom/google/android/gms/internal/ads/zzaku;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:Lcom/google/android/gms/internal/ads/zzahy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:Lcom/google/android/gms/internal/ads/zzjz;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->zze:Lcom/google/android/gms/internal/ads/zzhq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzg:Lcom/google/android/gms/internal/ads/zzki;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzh:Lcom/google/android/gms/internal/ads/zzcy;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamq;->zzk()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzi:Landroid/os/Looper;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzj:Lcom/google/android/gms/internal/ads/zzg;

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzahz;->zze:Lcom/google/android/gms/internal/ads/zzahz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzk:Lcom/google/android/gms/internal/ads/zzahz;

    const-wide/16 p1, 0x14

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v6

    const-wide/16 p1, 0x1f4

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v8

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadz;

    const v1, 0x3f7851ec    # 0.97f

    const v2, 0x3f83d70a    # 1.03f

    const-wide/16 v3, 0x3e8

    const v5, 0x33d6bf95    # 1.0E-7f

    const v10, 0x3f7fbe77    # 0.999f

    const/4 v11, 0x0

    move-object v0, p1

    .line 8
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(FFJFJJFLcom/google/android/gms/internal/ads/zzady;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzm:Lcom/google/android/gms/internal/ads/zzadz;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaku;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:Lcom/google/android/gms/internal/ads/zzaku;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzahy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:Lcom/google/android/gms/internal/ads/zzahy;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzaku;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:Lcom/google/android/gms/internal/ads/zzaku;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzjz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:Lcom/google/android/gms/internal/ads/zzjz;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzhq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zze:Lcom/google/android/gms/internal/ads/zzhq;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzafy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzki;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzg:Lcom/google/android/gms/internal/ads/zzki;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzcy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzh:Lcom/google/android/gms/internal/ads/zzcy;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzi:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzj:Lcom/google/android/gms/internal/ads/zzg;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzahz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzk:Lcom/google/android/gms/internal/ads/zzahz;

    return-object p0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzadz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzm:Lcom/google/android/gms/internal/ads/zzadz;

    return-object p0
.end method


# virtual methods
.method public final zzl(Lcom/google/android/gms/internal/ads/zzjz;)Lcom/google/android/gms/internal/ads/zzaia;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzl:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:Lcom/google/android/gms/internal/ads/zzjz;

    return-object p0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzafy;)Lcom/google/android/gms/internal/ads/zzaia;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzl:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzf:Lcom/google/android/gms/internal/ads/zzafy;

    return-object p0
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzaie;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzl:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzl:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaie;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaie;-><init>(Lcom/google/android/gms/internal/ads/zzaia;)V

    return-object v0
.end method
