.class public final Lcom/google/android/gms/internal/ads/zzaco;
.super Lcom/google/android/gms/internal/ads/zzacz;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;II)V
    .locals 7

    const-string v2, "Md0NasjzX5Dv6RV9gbRrdbbQw799E9EBpEgmAwiNqi/RiG7V51y0yTZI5hLTRiUF"

    const-string v3, "4FqMwpBmkecZ5KuntXganMUU8jtWDsP5C5fiOE4sCtY="

    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzacz;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;II)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzabr;->zzc()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 2
    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyj;->zzY(I)Lcom/google/android/gms/internal/ads/zzyj;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyj;->zzY(I)Lcom/google/android/gms/internal/ads/zzyj;

    return-void
.end method
