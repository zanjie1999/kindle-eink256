.class public final Lcom/google/android/gms/internal/ads/zzdmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzdmx;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbni;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbnf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbnv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbns;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbsg;

.field private final zzg:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbno;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbnl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdmv;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmx;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdmx;-><init>(Lcom/google/android/gms/internal/ads/zzdmv;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdmx;->zza:Lcom/google/android/gms/internal/ads/zzdmx;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdmv;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdmv;->zza:Lcom/google/android/gms/internal/ads/zzbni;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzb:Lcom/google/android/gms/internal/ads/zzbni;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdmv;->zzb:Lcom/google/android/gms/internal/ads/zzbnf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzc:Lcom/google/android/gms/internal/ads/zzbnf;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdmv;->zzc:Lcom/google/android/gms/internal/ads/zzbnv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzd:Lcom/google/android/gms/internal/ads/zzbnv;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdmv;->zzf:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzg:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdmv;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzh:Landroidx/collection/SimpleArrayMap;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdmv;->zzd:Lcom/google/android/gms/internal/ads/zzbns;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zze:Lcom/google/android/gms/internal/ads/zzbns;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmv;->zze:Lcom/google/android/gms/internal/ads/zzbsg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzf:Lcom/google/android/gms/internal/ads/zzbsg;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdmv;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmx;-><init>(Lcom/google/android/gms/internal/ads/zzdmv;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbni;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzb:Lcom/google/android/gms/internal/ads/zzbni;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbnf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzc:Lcom/google/android/gms/internal/ads/zzbnf;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbnv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzd:Lcom/google/android/gms/internal/ads/zzbnv;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbns;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zze:Lcom/google/android/gms/internal/ads/zzbns;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzbsg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzf:Lcom/google/android/gms/internal/ads/zzbsg;

    return-object v0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbno;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzg:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbno;

    return-object p1
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbnl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzh:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnl;

    return-object p1
.end method

.method public final zzh()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzd:Lcom/google/android/gms/internal/ads/zzbnv;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzb:Lcom/google/android/gms/internal/ads/zzbni;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzc:Lcom/google/android/gms/internal/ads/zzbnf;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 5
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzf:Lcom/google/android/gms/internal/ads/zzbsg;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final zzi()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzg:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmx;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 3
    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
