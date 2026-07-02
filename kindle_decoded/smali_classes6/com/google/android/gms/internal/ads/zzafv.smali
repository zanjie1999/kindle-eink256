.class public final Lcom/google/android/gms/internal/ads/zzafv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zzG:Lcom/google/android/gms/internal/ads/zzafv;


# instance fields
.field public final zzA:I

.field public final zzB:I

.field public final zzC:I

.field public final zzD:I

.field public final zzE:I

.field private zzH:I

.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:Ljava/lang/String;

.field public final zzj:Lcom/google/android/gms/internal/ads/zzaiv;

.field public final zzk:Ljava/lang/String;

.field public final zzl:Ljava/lang/String;

.field public final zzm:I

.field public final zzn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final zzo:Lcom/google/android/gms/internal/ads/zzn;

.field public final zzp:J

.field public final zzq:I

.field public final zzr:I

.field public final zzs:F

.field public final zzt:I

.field public final zzu:F

.field public final zzv:[B

.field public final zzw:I

.field public final zzx:Lcom/google/android/gms/internal/ads/zzj;

.field public final zzy:I

.field public final zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafv;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(Lcom/google/android/gms/internal/ads/zzaft;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzafv;->zzG:Lcom/google/android/gms/internal/ads/zzafv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzafs;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaft;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zza(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzb(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzc(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzd(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zze:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zze(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzf:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzf(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzg:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzf:I

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzh:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzg(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzh(Lcom/google/android/gms/internal/ads/zzaft;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzj:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzi(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzk:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzj(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzk(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzm:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzl(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzl(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzm(Lcom/google/android/gms/internal/ads/zzaft;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzo:Lcom/google/android/gms/internal/ads/zzn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzn(Lcom/google/android/gms/internal/ads/zzaft;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzp:J

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzo(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzp(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzq(Lcom/google/android/gms/internal/ads/zzaft;)F

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzr(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzr(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzt:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzs(Lcom/google/android/gms/internal/ads/zzaft;)F

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzs(Lcom/google/android/gms/internal/ads/zzaft;)F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzu:F

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzt(Lcom/google/android/gms/internal/ads/zzaft;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzv:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzu(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzw:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzv(Lcom/google/android/gms/internal/ads/zzaft;)Lcom/google/android/gms/internal/ads/zzj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzx:Lcom/google/android/gms/internal/ads/zzj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzw(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzx(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzy(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzz(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzz(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzA(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzA(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzB(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzD:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzC(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzo:Lcom/google/android/gms/internal/ads/zzn;

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    :goto_5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzE:I

    return-void

    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzC(Lcom/google/android/gms/internal/ads/zzaft;)I

    move-result p1

    goto :goto_5
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/zzafu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(Lcom/google/android/gms/internal/ads/zzaft;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzafv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzafv;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzH:I

    if-eqz v2, :cond_3

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzH:I

    if-eqz v3, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzd:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzd:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzf:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzf:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzg:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzg:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzm:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzm:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzp:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzp:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzt:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzt:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzw:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzw:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzD:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzD:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzE:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzE:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzu:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzu:F

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zza:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzk:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzv:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzv:[B

    .line 10
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzj:Lcom/google/android/gms/internal/ads/zzaiv;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzj:Lcom/google/android/gms/internal/ads/zzaiv;

    .line 11
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzx:Lcom/google/android/gms/internal/ads/zzj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzx:Lcom/google/android/gms/internal/ads/zzj;

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzo:Lcom/google/android/gms/internal/ads/zzn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzo:Lcom/google/android/gms/internal/ads/zzn;

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafv;->zzd(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzH:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzb:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzd:I

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzf:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzg:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzj:Lcom/google/android/gms/internal/ads/zzaiv;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    .line 5
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiv;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzk:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    .line 6
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_6

    .line 7
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzm:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzp:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzt:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzu:F

    .line 9
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzw:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzA:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzB:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzC:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzD:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzE:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzH:I

    :cond_7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafv;->zza:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzk:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzh:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x68

    add-int/2addr v13, v14

    add-int/2addr v13, v15

    add-int v13, v13, v16

    add-int v13, v13, v17

    add-int v13, v13, v18

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Format("

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzaft;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafu;)V

    return-object v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzafv;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafu;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzag(I)Lcom/google/android/gms/internal/ads/zzaft;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafv;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(Lcom/google/android/gms/internal/ads/zzaft;)V

    return-object p1
.end method

.method public final zzc()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v2

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method
