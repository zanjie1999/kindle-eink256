.class public Lcom/google/android/gms/internal/ads/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzw;


# instance fields
.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:I

.field public final zzj:I

.field public final zzk:I

.field public final zzl:I

.field public final zzm:Z

.field public final zzn:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzo:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzp:I

.field public final zzq:I

.field public final zzr:I

.field public final zzs:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzt:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzu:I

.field public final zzv:Z

.field public final zzw:Z

.field public final zzx:Z

.field public final zzy:Lcom/google/android/gms/internal/ads/zzfot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfot<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzv;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzw;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzw;-><init>(Lcom/google/android/gms/internal/ads/zzv;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzw;->zza:Lcom/google/android/gms/internal/ads/zzw;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzu;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzf:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzi:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzj:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zza(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzk:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzb(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzl:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzc(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzm:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzn:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zze(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzfoj;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzr:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzf(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzs:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzg(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzh(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzu:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzv:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzw:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzx:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzi(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzw;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzm:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzw;->zzm:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzk:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzw;->zzk:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzl:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzw;->zzl:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzn:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzw;->zzn:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzs:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzw;->zzs:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzw;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzu:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzw;->zzu:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzw;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzw;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfot;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzw;->zzm:Z

    const v1, -0x3e773ea1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzk:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzl:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzn:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzo:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    const v1, 0x7fffffff

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzs:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzu:I

    add-int/2addr v0, v1

    const v1, 0xe1781

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzw;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfot;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
