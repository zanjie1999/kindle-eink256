.class Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "GetStoreCredentialsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetStoreCredentialContentHandler"
.end annotation


# instance fields
.field didEnterCookiesListNode:Z

.field didEnterResponseNode:Z

.field model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

.field shouldGrabCookieInformation:Z

.field storeCookie:Lcom/amazon/kcp/store/models/internal/StoreCookie;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->didEnterResponseNode:Z

    .line 85
    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->didEnterCookiesListNode:Z

    .line 86
    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->shouldGrabCookieInformation:Z

    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    .line 91
    new-instance p1, Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-direct {p1}, Lcom/amazon/kcp/store/models/internal/StoreCookie;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->storeCookie:Lcom/amazon/kcp/store/models/internal/StoreCookie;

    return-void
.end method


# virtual methods
.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->shouldGrabCookieInformation:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "cookies"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->getCookieList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->setLoaded()V

    goto :goto_0

    :cond_1
    const-string v0, "cookie"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->model:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->getCookieList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->storeCookie:Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-virtual {p2}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->cloneModel()Lcom/amazon/foundation/internal/WebServiceModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->add(Lcom/amazon/foundation/internal/WebServiceModel;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "url"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->storeCookie:Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "value"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 119
    iget-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->storeCookie:Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->setCookieValue(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string/jumbo p2, "response"

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 97
    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->didEnterResponseNode:Z

    goto :goto_0

    .line 98
    :cond_0
    iget-boolean p2, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->didEnterResponseNode:Z

    if-eqz p2, :cond_1

    const-string p2, "cookies"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 99
    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->didEnterCookiesListNode:Z

    goto :goto_0

    .line 100
    :cond_1
    iget-boolean p2, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->didEnterResponseNode:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->didEnterCookiesListNode:Z

    if-eqz p2, :cond_2

    const-string p2, "cookie"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    iput-boolean v0, p0, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest$GetStoreCredentialContentHandler;->shouldGrabCookieInformation:Z

    :cond_2
    :goto_0
    return-void
.end method
