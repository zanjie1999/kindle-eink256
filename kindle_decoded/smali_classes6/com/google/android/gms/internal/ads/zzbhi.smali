.class public final Lcom/google/android/gms/internal/ads/zzbhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Landroid/os/Bundle;

.field private final zzc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Landroid/os/Bundle;

.field private final zzf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/util/Date;

.field private zzh:Ljava/lang/String;

.field private final zzi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:I

.field private zzk:Landroid/location/Location;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:I

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/ads/query/AdInfo;

.field private zzq:Ljava/lang/String;

.field private zzr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zza:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzb:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzc:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzd:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zze:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzf:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzi:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzn:I

    const v0, 0xea60

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzr:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zza:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbhi;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzb:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzc:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzd:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbhi;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zze:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzf:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzg:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzi:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzbhi;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzj:I

    return p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzbhi;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzk:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzbhi;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzn:I

    return p0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzbhi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzo:Z

    return p0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzbhi;)Lcom/google/android/gms/ads/query/AdInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzp:Lcom/google/android/gms/ads/query/AdInfo;

    return-object p0
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzbhi;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzr:I

    return p0
.end method


# virtual methods
.method public final zzB(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzj:I

    return-void
.end method

.method public final zzC(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzk:Landroid/location/Location;

    return-void
.end method

.method public final zzF(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzn:I

    return-void
.end method

.method public final zzI(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzo:Z

    return-void
.end method

.method public final zzs(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zza:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzu(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzb:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzw(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzd:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzx(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzd:Ljava/util/HashSet;

    const-string v0, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzy(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzg:Ljava/util/Date;

    return-void
.end method
