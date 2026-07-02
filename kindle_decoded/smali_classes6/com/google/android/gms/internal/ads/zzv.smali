.class public Lcom/google/android/gms/internal/ads/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:I

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfot<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zza:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzb:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzc:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzd:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zze:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzg:Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzh:I

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfot;->zzh()Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzi:Lcom/google/android/gms/internal/ads/zzfot;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzw;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zza:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzw;->zzl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzb:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzw;->zzm:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzc:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzw;->zzn:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzd:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zze:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzw;->zzs:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzw;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzg:Lcom/google/android/gms/internal/ads/zzfoj;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzw;->zzu:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzh:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzw;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzi:Lcom/google/android/gms/internal/ads/zzfot;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zza:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzb:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzc:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzd:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zze:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzf:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzg:Lcom/google/android/gms/internal/ads/zzfoj;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzh:I

    return p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfot;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzi:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0
.end method


# virtual methods
.method public zzj(IIZ)Lcom/google/android/gms/internal/ads/zzv;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzv;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzv;->zzb:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzc:Z

    return-object p0
.end method

.method public final zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzv;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "captioning"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzh:I

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzp(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzv;->zzg:Lcom/google/android/gms/internal/ads/zzfoj;

    :cond_2
    :goto_0
    return-object p0
.end method
