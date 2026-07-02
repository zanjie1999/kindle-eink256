.class public Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper$UserDictionaryInvalidUserLoginException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserDictionaryHelper"

.field private static final fJ:Ljava/lang/String; = "UserDictionaryHelper"

.field private static qp:Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;


# instance fields
.field private qq:Lcom/amazon/identity/auth/device/hj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hl;->ai(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hl;

    move-result-object p1

    goto :goto_0

    .line 2017
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/hi;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/hi;-><init>()V

    .line 69
    :goto_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->qq:Lcom/amazon/identity/auth/device/hj;

    .line 70
    instance-of p1, p1, Lcom/amazon/identity/auth/device/hl;

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->gn()Ljava/util/List;

    :cond_1
    return-void
.end method

.method public static declared-synchronized ah(Landroid/content/Context;)Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->qp:Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->qp:Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;

    .line 88
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->qp:Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static cU(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object p0, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->fJ:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 167
    sget-object v2, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->fJ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s_%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cT(Ljava/lang/String;)Z
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->qq:Lcom/amazon/identity/auth/device/hj;

    instance-of v0, v0, Lcom/amazon/identity/auth/device/hl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "addNewLogin"

    .line 129
    invoke-static {v0}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->cU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    sget-object v3, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->fJ:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->qq:Lcom/amazon/identity/auth/device/hj;

    check-cast v3, Lcom/amazon/identity/auth/device/hl;

    invoke-virtual {v3, p1}, Lcom/amazon/identity/auth/device/hl;->cV(Ljava/lang/String;)V

    const-string p1, "Success"

    .line 135
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper$UserDictionaryInvalidUserLoginException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    :try_start_1
    sget-object v3, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "username is invalid"

    invoke-static {v3, v4, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "InvalidUserLoginException"

    .line 141
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return v1

    :goto_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 146
    throw p1

    :cond_0
    return v1
.end method

.method public gn()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->qq:Lcom/amazon/identity/auth/device/hj;

    instance-of v0, v0, Lcom/amazon/identity/auth/device/hl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "getUserDictionary"

    .line 101
    invoke-static {v0}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->cU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    sget-object v3, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->fJ:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->qq:Lcom/amazon/identity/auth/device/hj;

    check-cast v3, Lcom/amazon/identity/auth/device/hl;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/hl;->gq()Ljava/util/List;

    move-result-object v3

    const-string v4, "Success"

    .line 107
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v3, :cond_0

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 112
    :try_start_1
    sget-object v4, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->TAG:Ljava/lang/String;

    const-string v5, "JSONException when tyring to get user dict cache"

    invoke-static {v4, v5, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "JSONException"

    .line 113
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object v1

    :goto_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 118
    throw v1

    :cond_1
    return-object v1
.end method
