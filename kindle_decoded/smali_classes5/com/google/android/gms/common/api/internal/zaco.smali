.class public final Lcom/google/android/gms/common/api/internal/zaco;
.super Lcom/google/android/gms/signin/internal/zac;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
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


# instance fields
.field private final zab:Landroid/content/Context;

.field private final zac:Landroid/os/Handler;

.field private final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
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

.field private final zae:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zaf:Lcom/google/android/gms/common/internal/ClientSettings;

.field private zag:Lcom/google/android/gms/signin/zae;

.field private zah:Lcom/google/android/gms/common/api/internal/zacn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zaco;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/zaco;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zab:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaco;->zac:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 2
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zae:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method static synthetic zae(Lcom/google/android/gms/common/api/internal/zaco;)Lcom/google/android/gms/common/api/internal/zacn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    return-object p0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zav;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zacn;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zae:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zacn;->zab(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/signin/zae;->zaa(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zacn;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zac:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacm;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zacm;-><init>(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/zacn;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ClientSettings;->zae(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaco;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaco;->zab:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zac:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaco;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/ClientSettings;->zac()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 5
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zae:Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/signin/zae;->zad()V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zac:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zacl;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zacl;-><init>(Lcom/google/android/gms/common/api/internal/zaco;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zad()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :cond_0
    return-void
.end method
