.class public Lcom/amazon/identity/auth/device/go;
.super Lcom/amazon/identity/auth/device/fz;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/identity/auth/device/gh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/go;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fz;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/identity/auth/device/go;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static cG(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.identity.auth.device.cookiekeys.namespace"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s#%s"

    .line 109
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object p1, Lcom/amazon/identity/auth/device/go;->TAG:Ljava/lang/String;

    const-string p2, "Getting actor cookies is not supported in pre-merge devices, returning null"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object p1, Lcom/amazon/identity/auth/device/go;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/amazon/identity/auth/device/go;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)V"
        }
    .end annotation

    .line 80
    sget-object p1, Lcom/amazon/identity/auth/device/go;->TAG:Ljava/lang/String;

    const-string p2, "Setting actor cookies is not supported in pre-merge devices, do nothing."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .line 93
    invoke-static {p4}, Lcom/amazon/identity/auth/device/hx;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_0

    .line 97
    new-instance p1, Lcom/amazon/identity/auth/device/gm;

    iget-object p3, p0, Lcom/amazon/identity/auth/device/go;->mContext:Landroid/content/Context;

    const-string v0, "com.amazon.identity.auth.device.cookiekeys.namespace.nonAuth"

    invoke-direct {p1, p3, v0}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, p2, p4}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 102
    :cond_0
    new-instance p3, Lcom/amazon/identity/auth/device/gm;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/go;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/go;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3, p2, p4}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/go;->mContext:Landroid/content/Context;

    const-string v2, "com.amazon.identity.auth.device.cookiekeys.namespace.nonAuth"

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/go;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/go;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    :goto_0
    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/hx;->ah(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/go$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/go$1;-><init>(Lcom/amazon/identity/auth/device/go;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-object v1
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 117
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    .line 118
    invoke-static {p2}, Lcom/amazon/identity/auth/device/go;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/gm;->fG()Z

    move-result p1

    return p1
.end method
