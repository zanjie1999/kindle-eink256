.class public Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzbhi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzw(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzs(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhi;->zzu(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_emulatorLiveAds"

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbhi;->zzx(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/AdRequest;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-object v0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzC(Landroid/location/Location;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzw(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzy(Ljava/util/Date;)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzB(I)V

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzF(Z)V

    return-object p0
.end method

.method public final zze(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zza:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzI(Z)V

    return-object p0
.end method
