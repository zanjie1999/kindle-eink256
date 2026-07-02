.class public Lcom/amazon/identity/auth/device/fv;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final bM:Ljava/lang/String;

.field private final ne:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/identity/auth/device/gc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/identity/auth/device/gc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/identity/auth/device/gc;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fv;->bM:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fv;->ne:Ljava/util/Map;

    goto :goto_0

    .line 77
    :cond_0
    iput-object p2, p0, Lcom/amazon/identity/auth/device/fv;->ne:Ljava/util/Map;

    :goto_0
    if-nez p3, :cond_1

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fv;->nf:Ljava/util/Map;

    goto :goto_1

    .line 86
    :cond_1
    iput-object p3, p0, Lcom/amazon/identity/auth/device/fv;->nf:Ljava/util/Map;

    .line 89
    :goto_1
    iput-object p4, p0, Lcom/amazon/identity/auth/device/fv;->w:Lcom/amazon/identity/auth/device/gc;

    return-void

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AccountData directedId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bY(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->nf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fv;->w:Lcom/amazon/identity/auth/device/gc;

    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->bM:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->ne:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fv;->w:Lcom/amazon/identity/auth/device/gc;

    if-eqz v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->bM:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public eP()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->nf:Ljava/util/Map;

    return-object v0
.end method

.method public eQ()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->ne:Ljava/util/Map;

    return-object v0
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->bM:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->nf:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fv;->ne:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
