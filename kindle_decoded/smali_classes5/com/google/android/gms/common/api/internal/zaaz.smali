.class public final Lcom/google/android/gms/common/api/internal/zaaz;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field final zaa:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "**>;>;"
        }
    .end annotation
.end field

.field zab:Lcom/google/android/gms/common/api/internal/zabr;

.field final zac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field zad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final zae:Lcom/google/android/gms/common/internal/ClientSettings;

.field final zaf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final zag:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field zah:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zacv;",
            ">;"
        }
    .end annotation
.end field

.field final zai:Lcom/google/android/gms/common/api/internal/zacx;

.field private final zaj:Ljava/util/concurrent/locks/Lock;

.field private final zak:Lcom/google/android/gms/common/internal/zak;

.field private zal:Lcom/google/android/gms/common/api/internal/zabu;

.field private final zam:I

.field private final zan:Landroid/content/Context;

.field private final zao:Landroid/os/Looper;

.field private volatile zap:Z

.field private zaq:J

.field private zar:J

.field private final zas:Lcom/google/android/gms/common/api/internal/zaax;

.field private final zat:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

.field private final zav:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;"
        }
    .end annotation
.end field

.field private zaw:Ljava/lang/Integer;

.field private final zax:Lcom/google/android/gms/common/internal/zaj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p11

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    new-instance v4, Ljava/util/LinkedList;

    .line 1
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v5, v4, :cond_0

    const-wide/32 v4, 0x1d4c0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    :goto_0
    iput-wide v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zaq:J

    const-wide/16 v4, 0x1388

    iput-wide v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zar:J

    new-instance v4, Ljava/util/HashSet;

    .line 3
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    new-instance v4, Lcom/google/android/gms/common/api/internal/ListenerHolders;

    .line 4
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/ListenerHolders;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaat;

    .line 5
    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/internal/zaat;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;)V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zax:Lcom/google/android/gms/common/internal/zaj;

    move-object v4, p1

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    move-object v4, p2

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 6
    new-instance v4, Lcom/google/android/gms/common/internal/zak;

    invoke-direct {v4, p3, v3}, Lcom/google/android/gms/common/internal/zak;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zaj;)V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaax;

    .line 7
    invoke-direct {v3, p0, p3}, Lcom/google/android/gms/common/api/internal/zaax;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    iput v2, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zam:I

    if-ltz v2, :cond_1

    .line 8
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    :cond_1
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zaf:Ljava/util/Map;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zav:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Lcom/google/android/gms/common/api/internal/zacx;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zacx;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    .line 10
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 11
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/zak;->zaf(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 13
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/zak;->zai(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_2

    :cond_3
    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zae:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zag:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public static zaf(Ljava/lang/Iterable;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    or-int/2addr v0, v3

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method static zag(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_1
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_2
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method

.method static synthetic zah(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zai(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private final zam(I)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_8

    .line 1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    or-int/2addr v0, v3

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_5

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zae:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaf:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zag:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v11, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zav:Ljava/util/ArrayList;

    move-object v3, p0

    .line 7
    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/common/api/internal/zax;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zax;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    return-void

    :cond_4
    if-eqz v0, :cond_7

    if-nez v1, :cond_6

    :cond_5
    :goto_2
    new-instance p1, Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zae:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaf:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zag:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zav:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v2, p0

    move-object v11, p0

    .line 10
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    return-void

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zag(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaz;->zag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x33

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot use sign-in mode: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Mode was already set to "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zan()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zak;->zab()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabu;->zae()V

    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zam:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Sign-in mode should have been set explicitly by auto-manage."

    .line 2
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/zaaz;->zaf(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaw:Ljava/lang/Integer;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 7
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_2
    const/4 v2, 0x1

    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    .line 8
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Illegal sign-in mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zaaz;->zam(I)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw v0
.end method

.method public final disconnect()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacx;->zab()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabu;->zah()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zab()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Lcom/google/android/gms/common/api/internal/zacw;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 9
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 10
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zak;->zaa()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 9
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    throw v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    const-string v1, " mUnconsumedApiCalls.size()="

    .line 4
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabu;->zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "the API"

    .line 3
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x41

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 7
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zacx;->zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 10
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 12
    :cond_2
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabu;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    goto :goto_2

    .line 11
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw p1
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zao:Landroid/os/Looper;

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabu;->zai()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zak;->zai(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zak;->zak(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final zaa(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zaaz;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zak;->zac(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zak;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zak;->zaa()V

    :cond_1
    return-void
.end method

.method public final zac(IZ)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    if-nez p2, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    if-nez p1, :cond_1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zat:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zan:Landroid/content/Context;

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaay;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/zaay;-><init>(Lcom/google/android/gms/common/api/internal/zaaz;)V

    .line 3
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/internal/zabr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/zabr;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaq:J

    .line 5
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zar:J

    .line 7
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 0
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacx;

    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/zacx;->zab:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 8
    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 9
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    sget-object v4, Lcom/google/android/gms/common/api/internal/zacx;->zaa:Lcom/google/android/gms/common/api/Status;

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/internal/zak;->zad(I)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zak:Lcom/google/android/gms/common/internal/zak;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zak;->zaa()V

    if-ne p1, v0, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->zan()V

    :cond_5
    return-void
.end method

.method final zad()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zap:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    const/4 v1, 0x2

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zas:Lcom/google/android/gms/common/api/internal/zaax;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabr;->zab()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    :cond_1
    return v1
.end method

.method final zae()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    .line 1
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {p0, v3, v2, v1, v2}, Lcom/google/android/gms/common/api/internal/zaaz;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zap(Lcom/google/android/gms/common/api/internal/zacv;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "GoogleApiClientImpl"

    if-nez v0, :cond_0

    :try_start_1
    new-instance p1, Ljava/lang/Exception;

    .line 9
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Attempted to remove pending transform when no transforms are registered."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Exception;

    .line 8
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Failed to remove pending transform - this may lead to memory leaks!"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 4
    :cond_2
    :try_start_4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zal:Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zabu;->zal()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaj:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1
.end method
