.class public final Lcom/google/android/gms/common/api/internal/zabd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabu;
.implements Lcom/google/android/gms/common/api/internal/zat;


# instance fields
.field final zaa:Ljava/util/Map;
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

.field final zab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field final zac:Lcom/google/android/gms/common/internal/ClientSettings;

.field final zad:Ljava/util/Map;
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

.field final zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
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

.field zaf:I

.field final zag:Lcom/google/android/gms/common/api/internal/zaaz;

.field final zah:Lcom/google/android/gms/common/api/internal/zabt;

.field private final zai:Ljava/util/concurrent/locks/Lock;

.field private final zaj:Ljava/util/concurrent/locks/Condition;

.field private final zak:Landroid/content/Context;

.field private final zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private final zam:Lcom/google/android/gms/common/api/internal/zabc;

.field private volatile zan:Lcom/google/android/gms/common/api/internal/zaba;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private zao:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zaaz;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zas;",
            ">;",
            "Lcom/google/android/gms/common/api/internal/zabt;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zak:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zabd;->zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zabd;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p8, p0, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/common/api/internal/zabd;->zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iput-object p11, p0, Lcom/google/android/gms/common/api/internal/zabd;->zah:Lcom/google/android/gms/common/api/internal/zabt;

    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-interface {p10, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    .line 2
    check-cast p5, Lcom/google/android/gms/common/api/internal/zas;

    .line 3
    invoke-virtual {p5, p0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zat;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/internal/zabc;

    .line 4
    invoke-direct {p1, p0, p4}, Lcom/google/android/gms/common/api/internal/zabc;-><init>(Lcom/google/android/gms/common/api/internal/zabd;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    .line 5
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zaas;

    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    return-void
.end method

.method static synthetic zat(Lcom/google/android/gms/common/api/internal/zabd;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic zau(Lcom/google/android/gms/common/api/internal/zabd;)Lcom/google/android/gms/common/api/internal/zaba;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    return-object p0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaba;->zaf(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaba;->zah(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw p1
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaba;->zag(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw p1
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 1
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
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaba;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final zae()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->zae()V

    return-void
.end method

.method public final zah()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->zad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public final zai()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaag;

    return v0
.end method

.method public final zal()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 1
    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    check-cast v0, Lcom/google/android/gms/common/api/internal/zaag;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaag;->zai()V

    :cond_0
    return-void
.end method

.method public final zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    invoke-interface {v2, v0, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$Client;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final zao()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaar;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabd;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabd;->zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zabd;->zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zabd;->zak:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/common/api/internal/zaar;-><init>(Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0
.end method

.method final zap()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaag;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zaag;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw v0
.end method

.method final zaq(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zaas;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw p1
.end method

.method final zar(Lcom/google/android/gms/common/api/internal/zabb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final zas(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    const/4 v1, 0x2

    .line 1
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
