.class public Lcom/amazon/kcp/store/models/internal/StoreCookie;
.super Lcom/amazon/foundation/internal/WebServiceModel;
.source "StoreCookie.java"


# instance fields
.field private cookieValue:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/foundation/internal/WebServiceModel;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->empty()V

    return-void
.end method


# virtual methods
.method public cloneModel()Lcom/amazon/foundation/internal/WebServiceModel;
    .locals 2

    .line 29
    new-instance v0, Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/StoreCookie;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->setUrl(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->setCookieValue(Ljava/lang/String;)V

    return-object v0
.end method

.method public empty()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    return-void
.end method

.method public getCookieValue()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCookieValue(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cookieValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
