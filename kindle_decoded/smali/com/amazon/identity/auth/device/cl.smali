.class public Lcom/amazon/identity/auth/device/cl;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "cl"

.field private static final il:Landroid/net/Uri;


# instance fields
.field private final cK:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.amazon.appmanager.preload.device_info.provider"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/cl;->il:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cl;->cK:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bP()Ljava/lang/String;
    .locals 5

    .line 1054
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cl;->cK:Landroid/content/Context;

    sget-object v1, Lcom/amazon/identity/auth/device/cl;->il:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mw;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/amazon/identity/auth/device/cl;->il:Landroid/net/Uri;

    goto :goto_1

    .line 1065
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/ek;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/cl;->cK:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    .line 1066
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ek;->ec()Ljava/util/List;

    move-result-object v0

    .line 1067
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 1069
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, ".preload.device_info.provider"

    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 97
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_4

    return-object v1

    .line 114
    :cond_4
    :try_start_0
    new-instance v2, Lcom/amazon/identity/auth/device/ec;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/cl;->cK:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amazon/identity/auth/device/ec;-><init>(Landroid/content/Context;)V

    .line 1127
    new-instance v3, Lcom/amazon/identity/auth/device/cl$1;

    invoke-direct {v3, p0, v0}, Lcom/amazon/identity/auth/device/cl$1;-><init>(Lcom/amazon/identity/auth/device/cl;Landroid/net/Uri;)V

    .line 115
    invoke-virtual {v2, v0, v3}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "ExceptionPreloadContentProvider"

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    sget-object v3, Lcom/amazon/identity/auth/device/cl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
