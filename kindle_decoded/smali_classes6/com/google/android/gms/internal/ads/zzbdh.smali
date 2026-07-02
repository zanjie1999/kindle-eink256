.class public final Lcom/google/android/gms/internal/ads/zzbdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private zza:Landroid/os/Bundle;

.field private zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Z

.field private zzd:I

.field private final zze:Landroid/os/Bundle;

.field private final zzf:Landroid/os/Bundle;

.field private final zzg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:I

.field private zzi:Ljava/lang/String;

.field private final zzj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zza:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzb:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzc:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzd:I

    new-instance v1, Landroid/os/Bundle;

    .line 3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zze:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    .line 4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzf:Landroid/os/Bundle;

    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzg:Ljava/util/List;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzh:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzi:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzj:Ljava/util/List;

    const v0, 0xea60

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzk:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbdg;
    .locals 28

    move-object/from16 v0, p0

    .line 1
    new-instance v27, Lcom/google/android/gms/internal/ads/zzbdg;

    move-object/from16 v1, v27

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zza:Landroid/os/Bundle;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzb:Ljava/util/List;

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzc:Z

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzd:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zze:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzf:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzg:Ljava/util/List;

    move-object/from16 v17, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzh:I

    move/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzi:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzj:Ljava/util/List;

    move-object/from16 v24, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzk:I

    move/from16 v25, v2

    const/16 v2, 0x8

    const-wide/16 v3, -0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbio;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzbcx;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-object v27
.end method

.method public final zzb(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbdh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zza:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzc(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbdh;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzb:Ljava/util/List;

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/ads/zzbdh;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzc:Z

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzbdh;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzd:I

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzbdh;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzh:I

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/ads/zzbdh;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzk:I

    return-object p0
.end method
