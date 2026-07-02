.class public Lcom/amazon/identity/auth/device/jw;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/km;


# instance fields
.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field private iO:Lcom/amazon/identity/auth/device/lh;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/amazon/identity/auth/device/jw;->iO:Lcom/amazon/identity/auth/device/lh;

    .line 33
    iput-object p2, p0, Lcom/amazon/identity/auth/device/jw;->iO:Lcom/amazon/identity/auth/device/lh;

    .line 34
    iput-object p1, p0, Lcom/amazon/identity/auth/device/jw;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/amazon/identity/auth/device/jw;->bO:Lcom/amazon/identity/auth/device/ej;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jw;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/jw;->iO:Lcom/amazon/identity/auth/device/lh;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/jw;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/amazon/identity/auth/device/jt;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/lt;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/kk;
    .locals 6

    .line 63
    new-instance v3, Lcom/amazon/identity/auth/device/li;

    .line 64
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ma;->iG()Z

    move-result v0

    invoke-direct {v3, p2, p3, v0}, Lcom/amazon/identity/auth/device/li;-><init>(Lcom/amazon/identity/auth/device/lt;Lcom/amazon/identity/auth/device/kl;Z)V

    .line 66
    new-instance p2, Lcom/amazon/identity/auth/device/jt;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/jw;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/jw;->iO:Lcom/amazon/identity/auth/device/lh;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/jw;->bO:Lcom/amazon/identity/auth/device/ej;

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/jt;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/kj;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)V

    return-object p2
.end method

.method public b(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/kk;
    .locals 1

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/ll;

    invoke-direct {v0, p2}, Lcom/amazon/identity/auth/device/ll;-><init>(Lcom/amazon/identity/kcpsdk/common/WebResponseParser;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/amazon/identity/auth/device/jw;->b(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/lt;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/kk;

    move-result-object p1

    return-object p1
.end method
