.class public Lcom/amazon/identity/auth/device/gh;
.super Lcom/amazon/identity/auth/device/fz;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.gh"


# instance fields
.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gh;-><init>(Lcom/amazon/identity/auth/device/gc;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/gc;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fz;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method

.method static C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "com.amazon.dcp.sso.token.amazon.cookies"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v3, p1, v4

    aput-object p0, p1, v2

    const-string p0, "%s.%s"

    .line 196
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    const-string p0, "%s.%s#%s"

    .line 200
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "com.amazon.dcp.sso.token.amazon.cookies"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v3, p1, v4

    aput-object p0, p1, v2

    const-string p0, "%s.json.%s"

    .line 215
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    const-string p0, "%s.json.%s#%s"

    .line 219
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "json."

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "json.%s#%s"

    .line 258
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s#%s"

    .line 271
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/gh;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/identity/auth/device/hx;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/gh;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/amazon/identity/auth/device/hx;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
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

    .line 151
    invoke-static {p4}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    new-instance p4, Lcom/amazon/identity/auth/device/gh$1;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gh$1;-><init>(Lcom/amazon/identity/auth/device/gh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p4}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "com.amazon.dcp.sso.token.amazon.actor.cookies"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v4, p2, v5

    aput-object p1, p2, v3

    aput-object p0, p2, v2

    const-string p0, "%s.json.%s.%s"

    .line 236
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v5

    aput-object p1, v0, v3

    aput-object p0, v0, v2

    aput-object p2, v0, v1

    const-string p0, "%s.json.%s.%s#%s"

    .line 240
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 116
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {p2, p3, p4}, Lcom/amazon/identity/auth/device/gh;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/hx;->aj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
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

    .line 55
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    sget-object p1, Lcom/amazon/identity/auth/device/gh;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 61
    invoke-static {p3, p1, p2}, Lcom/amazon/identity/auth/device/gh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    .line 143
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    .line 1181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1182
    invoke-static {p2, p3, p4}, Lcom/amazon/identity/auth/device/gh;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p5}, Lcom/amazon/identity/auth/device/hx;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/gh;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/amazon/identity/auth/device/hx;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/gh;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Lcom/amazon/identity/auth/device/hx;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    const-string p3, "com.amazon.identity.auth.device.cookiekeys.namespace.nonAuth"

    invoke-virtual {p2, p3, p1}, Lcom/amazon/identity/auth/device/gc;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-static {p2, p3, p4}, Lcom/amazon/identity/auth/device/gh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    .line 76
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/gh;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.identity.auth.device.cookiekeys.namespace.nonAuth"

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/hx;->ai(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    .line 86
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/gh;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v0, v2, v3}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/hx;->aj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/gh;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    .line 96
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/gh;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/hx;->ai(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gh;->w:Lcom/amazon/identity/auth/device/gc;

    .line 104
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/gh;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/hx;->aj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/gh;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Clear cookies is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
