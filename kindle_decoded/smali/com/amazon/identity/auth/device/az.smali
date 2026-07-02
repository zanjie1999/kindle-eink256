.class public final Lcom/amazon/identity/auth/device/az;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/az$a;
    }
.end annotation


# static fields
.field private static fd:Lcom/amazon/identity/auth/device/az;

.field private static final fe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

.field private final ff:Lcom/amazon/identity/auth/device/ed;

.field private final s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    sput-object v0, Lcom/amazon/identity/auth/device/az;->fe:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PERSON.ADULT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/amazon/identity/auth/device/az;->fe:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PERSON.CHILD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/amazon/identity/auth/device/az;->fe:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PERSON.TEEN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    .line 92
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/az;->w:Lcom/amazon/identity/auth/device/gc;

    .line 93
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/az;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    .line 94
    new-instance p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/az;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Lcom/amazon/identity/auth/device/gc;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/az;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-void
.end method

.method private a(ILjava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 737
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result_code"

    .line 738
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error_message"

    .line 739
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "retryable"

    .line 740
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/az$a;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/az;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/az$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/az;)Lcom/amazon/identity/auth/device/ed;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "ActorManagerLogic"

    const-string v1, "Fetching actor type from server side."

    .line 2691
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v8, p4

    .line 2692
    invoke-direct/range {v2 .. v8}, Lcom/amazon/identity/auth/device/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/ActorInfo;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;)Ljava/lang/String;

    .line 2693
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/az;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/az$a;

    move-result-object p0

    iget-object p0, p0, Lcom/amazon/identity/auth/device/az$a;->fr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/ActorInfo;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/ActorInfo;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 761
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.amazon.identity.auth.device.api.TokenKeys.Options.ForceRefreshOAuthToken"

    const/4 v1, 0x1

    .line 762
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p4, :cond_0

    .line 766
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getProgram()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "program"

    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "app_identifier"

    .line 767
    invoke-virtual {v6, p4, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 775
    iget-object p3, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p3}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/hg;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    goto :goto_0

    .line 779
    :cond_1
    iget-object p4, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p4}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/hg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    :goto_0
    const-wide/16 p2, 0xf

    .line 782
    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo p2, "value_key"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 6

    .line 3622
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v0

    .line 3623
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getProgram()Ljava/lang/String;

    move-result-object v1

    .line 3625
    sget-object v2, Lcom/amazon/identity/auth/device/az;->fe:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "ActorManagerLogic"

    if-nez v2, :cond_0

    .line 3627
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Unknown actor type: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v5, "Unknown actor type."

    invoke-static {v2, v5, v3}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    .line 3633
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/az;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/gm;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/gm;

    move-result-object v0

    const-string v2, "actor_id"

    .line 3635
    invoke-direct {p0, v1, v2}, Lcom/amazon/identity/auth/device/az;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getActorDirectedId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "actor_type"

    .line 3636
    invoke-direct {p0, v1, p1}, Lcom/amazon/identity/auth/device/az;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo p1, "result_actor_type"

    .line 3638
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/az;->g(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 3639
    invoke-interface {p3, p0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception happened when trying to set actor mapping."

    .line 3643
    invoke-static {v4, p1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3644
    sget-object p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p1, "Fail to insert into database, please retry"

    invoke-static {p0, p1, v3}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 4

    .line 3660
    sget-object v0, Lcom/amazon/identity/auth/device/az;->fe:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ActorManagerLogic"

    if-nez v0, :cond_0

    .line 3662
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unknown actor type: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "Unknown actor type."

    invoke-static {v0, v3, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    :cond_0
    const/4 p4, 0x5

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3667
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getProgram()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getActorDirectedId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v1

    const/4 v0, 0x2

    aput-object p2, p4, v0

    const/4 p2, 0x3

    aput-object p3, p4, p2

    const/4 p2, 0x4

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p2

    const-string p1, "Passing profile to APS. Program: %s, ActorId: %s, ActorType: %s, PackageName: %s, AccountId: %s"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 3668
    iget-object p0, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p0}, Lcom/amazon/android/amazonprofile/AmazonProfileManager;->getAmazonProfileManager(Landroid/content/Context;)Lcom/amazon/android/amazonprofile/AmazonProfileManager;

    const/4 p0, 0x0

    throw p0
.end method

.method private varargs a([Ljava/lang/String;)Z
    .locals 4

    .line 720
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 722
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private aD(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 650
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "actor_info_storage_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1787
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.amazon.identity.auth.device.api.cookiekeys.options.forcerefresh"

    const/4 v1, 0x1

    .line 1788
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1790
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    iget-object p0, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v0

    const/4 p0, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v4

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/hg;->f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p0

    goto :goto_0

    .line 1796
    :cond_0
    iget-object p0, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/hg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p0

    :goto_0
    const-wide/16 p1, 0xf

    .line 1798
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static declared-synchronized b(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/az;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/az;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/az;->fd:Lcom/amazon/identity/auth/device/az;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/az;->c(Lcom/amazon/identity/auth/device/ed;)V

    .line 103
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/az;->fd:Lcom/amazon/identity/auth/device/az;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/az;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/identity/auth/device/az;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    return-object p0
.end method

.method private bb()Landroid/os/Bundle;
    .locals 3

    .line 746
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result_code"

    const/4 v2, 0x1

    .line 747
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/amazon/identity/auth/device/az;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/az;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    sput-object v0, Lcom/amazon/identity/auth/device/az;->fd:Lcom/amazon/identity/auth/device/az;

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actor_info/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/az$a;
    .locals 4

    .line 699
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v1, "actor.sub.type"

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/identity/auth/device/gc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/amazon/identity/auth/device/az;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v2, "actor.entity.type"

    invoke-virtual {v1, p1, p2, v2}, Lcom/amazon/identity/auth/device/gc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    iget-object v2, p0, Lcom/amazon/identity/auth/device/az;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v3, "actor.converted.type"

    invoke-virtual {v2, p1, p2, v3}, Lcom/amazon/identity/auth/device/gc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    new-instance p2, Lcom/amazon/identity/auth/device/az$a;

    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/identity/auth/device/az$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 753
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/az;->bb()Landroid/os/Bundle;

    move-result-object v0

    .line 754
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "ActorManagerLogic"

    const-string v1, "Signing up and enrolling actor with ui called"

    .line 292
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string v1, "key_sign_in_full_endpoint"

    move-object/from16 v8, p4

    .line 296
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    move-object v11, p0

    .line 297
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/az;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "KEY_SIGN_IN_ENDPOINT in option bundle cannot be empty!"

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-object v0

    .line 303
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/az$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object/from16 v5, p6

    move-object v7, p3

    move-object/from16 v8, p4

    move-object v9, v0

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/amazon/identity/auth/device/az$1;-><init>(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "ActorManagerLogic"

    const-string v1, "Enrolling actor with ui called"

    .line 370
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string v1, "key_sign_in_full_endpoint"

    move-object/from16 v9, p5

    .line 374
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    move-object v12, p0

    .line 375
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/az;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "KEY_SIGN_IN_ENDPOINT in option bundle cannot be empty!"

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-object v0

    .line 381
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/az$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object v10, v0

    move-object v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/amazon/identity/auth/device/az$2;-><init>(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public a(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;",
            "Lcom/amazon/identity/auth/device/api/ActorInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    const-string v0, "ActorManagerLogic"

    const-string v1, "Switch actor is called."

    .line 447
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v9, Lcom/amazon/identity/auth/device/bl;

    move-object/from16 v1, p5

    invoke-direct {v9, v1}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 1707
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;->Force:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    const/4 v2, 0x0

    move-object v5, p1

    if-ne v5, v1, :cond_1

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getSuggestedActorType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/identity/auth/device/az;->fe:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getSuggestedActorType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Null or invalid suggested actor type is passed in with ActorSwitchMode.Force"

    .line 1709
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1712
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getActorDirectedId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getProgram()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/az;->a([Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    .line 451
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v1, "The information in ActorInfo is not correct."

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-object v9

    .line 455
    :cond_2
    iget-object v1, v8, Lcom/amazon/identity/auth/device/az;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "The account for switching doesn\'t exist in MAP."

    .line 457
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-object v9

    .line 462
    :cond_3
    iget-object v0, v8, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    new-instance v7, Lcom/amazon/identity/auth/device/az$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object v5, p1

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/az$3;-><init>(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/bl;)V

    invoke-static {v7}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-object v9

    .line 529
    :cond_4
    iget-object v0, v8, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 531
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v1, "AmazonProfileService 4.0 is not available on this device. Please contact device type owner to merge AmazonProfileService 4.0 to the device."

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-object v9

    :cond_5
    if-nez p4, :cond_6

    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_6
    move-object v0, p4

    :goto_1
    const-string v1, "do_not_pass_package_name_to_aps"

    .line 539
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_2

    :cond_7
    move-object v7, p3

    .line 549
    :goto_2
    new-instance v10, Lcom/amazon/identity/auth/device/az$4;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object v5, p1

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/az$4;-><init>(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-object v9
.end method

.method public getActor(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const-string v0, "actor_type"

    const-string v1, "actor_id"

    const-string/jumbo v2, "program"

    .line 246
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    .line 248
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/az;->a([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p2, "accountId/Program cannot be null"

    invoke-static {p1, p2, v4}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/az;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v3, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "ActorManagerLogic"

    if-nez v3, :cond_1

    const-string p1, "Account no longer exist, returning null for actor info mapping."

    .line 254
    invoke-static {v6, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    const-string p2, "The account doesn\'t exist in MAP."

    invoke-static {p1, p2, v4}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 259
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/az;->bb()Landroid/os/Bundle;

    move-result-object v3

    .line 260
    iget-object v7, p0, Lcom/amazon/identity/auth/device/az;->ff:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/az;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/amazon/identity/auth/device/gm;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/gm;

    move-result-object p1

    .line 262
    invoke-direct {p0, p2, v1}, Lcom/amazon/identity/auth/device/az;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-direct {p0, p2, v0}, Lcom/amazon/identity/auth/device/az;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/String;

    aput-object v7, p2, v4

    aput-object p1, p2, v5

    .line 265
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/az;->a([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {v3, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    const-string p1, "accountId/Program does not have associated actor id or actor type"

    .line 273
    invoke-static {v6, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p2, "accountId/Program does not have associated actor id or actor type."

    invoke-static {p1, p2, v4}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Exception happened when trying to get actor info for mapping."

    .line 279
    invoke-static {v6, p2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p2, "Fail to query database."

    invoke-static {p1, p2, v4}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getActorForMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    .line 156
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/az;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x5

    const-string p2, "accountId/actorMapping cannot be null"

    .line 158
    invoke-direct {p0, p1, p2, v2}, Lcom/amazon/identity/auth/device/az;->a(ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/az;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "ActorManagerLogic"

    if-nez v1, :cond_1

    const-string p1, "Account no longer exist, returning null for actor mapping."

    .line 162
    invoke-static {v4, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "The account doesn\'t exist in MAP."

    .line 163
    invoke-direct {p0, v0, p1, v2}, Lcom/amazon/identity/auth/device/az;->a(ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 167
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "actor_id"

    .line 168
    invoke-direct {p0, p2, p1}, Lcom/amazon/identity/auth/device/az;->g(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Exception happened when trying to get actor for mapping."

    .line 172
    invoke-static {v4, p2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    const-string p2, "Fail to query database."

    .line 173
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/identity/auth/device/az;->a(ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.current.actor"

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/az;->getActorForMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public removeActorMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 193
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/az;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x5

    const-string p2, "accountId/actorMapping cannot be null"

    .line 195
    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/identity/auth/device/az;->a(ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ActorManagerLogic"

    if-nez v0, :cond_1

    const-string p1, "The account doesn\'t exist in MAP. Remove actor mapping success."

    .line 199
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/az;->bb()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 204
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az;->w:Lcom/amazon/identity/auth/device/gc;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, p2}, Lcom/amazon/identity/auth/device/gc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/az;->bb()Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Exception happened when trying to remove actor mapping."

    .line 209
    invoke-static {v1, p2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    const-string p2, "Fail to insert into database."

    .line 210
    invoke-direct {p0, p1, p2, v2}, Lcom/amazon/identity/auth/device/az;->a(ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public removeCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.current.actor"

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/az;->removeActorMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setActorMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    .line 123
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/az;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x5

    const-string p2, "accountId/actorId/actorMapping cannot be null"

    .line 125
    invoke-direct {p0, p1, p2, v2}, Lcom/amazon/identity/auth/device/az;->a(ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/az;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "ActorManagerLogic"

    if-nez v1, :cond_1

    const-string p1, "The account doesn\'t exist in MAP."

    .line 129
    invoke-static {v5, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, v4, p1, v2}, Lcom/amazon/identity/auth/device/az;->a(ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 134
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/az;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/gc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/az;->bb()Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Exception happened when trying to set actor mapping."

    .line 139
    invoke-static {v5, p2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Fail to insert into database."

    .line 140
    invoke-direct {p0, v0, p1, v3}, Lcom/amazon/identity/auth/device/az;->a(ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentActor(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.current.actor"

    .line 217
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/az;->setActorMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
