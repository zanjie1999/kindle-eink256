.class public final Lcom/google/android/gms/internal/ads/zzacw;
.super Lcom/google/android/gms/internal/ads/zzacz;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzi:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;IILandroid/view/View;)V
    .locals 7

    const-string v2, "Rh7wPiyt0Q0zAefasWAQ/36LhULiVi3U1eCO9K34euxkll+3xBb3q2iaqyDuAy33"

    const-string v3, "Kmv9uscZLQkY9DcwgermeDphrIGnHnQJYdRAudw6Thg="

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzacz;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyj;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzacw;->zzi:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacw;->zzi:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzbX:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Lcom/google/android/gms/internal/ads/zzabr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabr;->zzc()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzacw;->zzi:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzabv;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyy;->zza()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzabv;->zza:Ljava/lang/Long;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzyx;->zza(J)Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzabv;->zzb:Ljava/lang/Long;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzyx;->zzb(J)Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzabv;->zzc:Ljava/lang/Long;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzyx;->zzc(J)Lcom/google/android/gms/internal/ads/zzyx;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzabv;->zzd:Ljava/lang/Long;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzyx;->zzd(J)Lcom/google/android/gms/internal/ads/zzyx;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Lcom/google/android/gms/internal/ads/zzyj;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyj;->zzL(Lcom/google/android/gms/internal/ads/zzyy;)Lcom/google/android/gms/internal/ads/zzyj;

    :cond_1
    return-void
.end method
