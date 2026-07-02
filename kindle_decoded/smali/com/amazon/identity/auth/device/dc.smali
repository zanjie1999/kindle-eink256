.class public Lcom/amazon/identity/auth/device/dc;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/km;


# instance fields
.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field private iO:Lcom/amazon/identity/auth/device/lh;

.field private iP:Lcom/amazon/identity/auth/device/br;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/amazon/identity/auth/device/dc;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/amazon/identity/auth/device/dc;->iO:Lcom/amazon/identity/auth/device/lh;

    .line 26
    iput-object v0, p0, Lcom/amazon/identity/auth/device/dc;->iP:Lcom/amazon/identity/auth/device/br;

    .line 46
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dc;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dc;->iP:Lcom/amazon/identity/auth/device/br;

    .line 48
    new-instance p1, Lcom/amazon/identity/auth/device/lh;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/dc;->iP:Lcom/amazon/identity/auth/device/br;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/lh;-><init>(Lcom/amazon/identity/auth/device/kn;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dc;->iO:Lcom/amazon/identity/auth/device/lh;

    .line 49
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dc;->bO:Lcom/amazon/identity/auth/device/ej;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/bs;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/dc;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 41
    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/device/bs;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/identity/auth/device/dc;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/lt;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/db;
    .locals 9

    .line 1085
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dc;->iP:Lcom/amazon/identity/auth/device/br;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/br;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bs;->r(Landroid/content/Context;)Lcom/amazon/identity/auth/device/br;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dc;->iP:Lcom/amazon/identity/auth/device/br;

    .line 1092
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dc;->iO:Lcom/amazon/identity/auth/device/lh;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/lh;->ii()Z

    move-result v0

    .line 1093
    new-instance v1, Lcom/amazon/identity/auth/device/lh;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dc;->iP:Lcom/amazon/identity/auth/device/br;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/lh;-><init>(Lcom/amazon/identity/auth/device/kn;)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/dc;->iO:Lcom/amazon/identity/auth/device/lh;

    .line 1094
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/lh;->l(Z)V

    .line 65
    :cond_1
    :goto_0
    new-instance v6, Lcom/amazon/identity/auth/device/li;

    .line 66
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ma;->iG()Z

    move-result v0

    invoke-direct {v6, p2, p3, v0}, Lcom/amazon/identity/auth/device/li;-><init>(Lcom/amazon/identity/auth/device/lt;Lcom/amazon/identity/auth/device/kl;Z)V

    .line 67
    new-instance p2, Lcom/amazon/identity/auth/device/db;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/dc;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/dc;->iO:Lcom/amazon/identity/auth/device/lh;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/dc;->bO:Lcom/amazon/identity/auth/device/ej;

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/identity/auth/device/db;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/kj;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)V

    return-object p2
.end method

.method public a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/db;
    .locals 1

    .line 75
    new-instance v0, Lcom/amazon/identity/auth/device/ll;

    invoke-direct {v0, p2}, Lcom/amazon/identity/auth/device/ll;-><init>(Lcom/amazon/identity/kcpsdk/common/WebResponseParser;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/amazon/identity/auth/device/dc;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/lt;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/db;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;
        }
    .end annotation

    .line 102
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/kk;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/dc;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/db;

    move-result-object p1

    return-object p1
.end method
