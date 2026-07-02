.class public Lcom/amazon/identity/auth/device/jy;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/lt;


# instance fields
.field private rM:Lcom/amazon/identity/auth/device/jx;

.field private rN:Lcom/amazon/identity/auth/device/lt;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/lt;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    .line 16
    new-instance p1, Lcom/amazon/identity/auth/device/jx;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/jx;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/jy;->rM:Lcom/amazon/identity/auth/device/jx;

    return-void
.end method


# virtual methods
.method public b([BI)Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/device/lt;->b([BI)Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rM:Lcom/amazon/identity/auth/device/jx;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jx;->hf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rM:Lcom/amazon/identity/auth/device/jx;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b([BJ)Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/jy;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/amazon/identity/auth/device/mb;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/lt;->c(Lcom/amazon/identity/auth/device/mb;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rM:Lcom/amazon/identity/auth/device/jx;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->c(Lcom/amazon/identity/auth/device/mb;)V

    return-void
.end method

.method public hf()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hf()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rM:Lcom/amazon/identity/auth/device/jx;

    .line 59
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jx;->hf()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hg()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rM:Lcom/amazon/identity/auth/device/jx;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/jx;->hg()Z

    move-result v0

    return v0
.end method

.method public hh()Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hh()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hj()Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hj()Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rM:Lcom/amazon/identity/auth/device/jx;

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hj()Lcom/amazon/identity/kcpsdk/common/ParseError;

    .line 52
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/jy;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    return-object v0
.end method

.method public hk()Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorNoError:Lcom/amazon/identity/kcpsdk/common/ParseError;

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rN:Lcom/amazon/identity/auth/device/lt;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/lt;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jy;->rM:Lcom/amazon/identity/auth/device/jx;

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    return-object v0
.end method
