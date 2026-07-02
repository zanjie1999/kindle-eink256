.class public Lcom/amazon/identity/auth/device/ll;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/lt;


# instance fields
.field protected tY:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/kcpsdk/common/WebResponseParser;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ll;->tY:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    return-void
.end method


# virtual methods
.method public b([BI)Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ll;->tY:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_0

    int-to-long v1, p2

    .line 32
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b([BJ)Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/amazon/identity/auth/device/mb;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ll;->tY:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->c(Lcom/amazon/identity/auth/device/mb;)V

    :cond_0
    return-void
.end method

.method public hf()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ll;->tY:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hf()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hh()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ll;->tY:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hh()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hj()Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ll;->tY:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hj()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hk()Lcom/amazon/identity/kcpsdk/common/ParseError;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ll;->tY:Lcom/amazon/identity/kcpsdk/common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->hk()Lcom/amazon/identity/kcpsdk/common/ParseError;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
