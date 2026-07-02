.class public Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;
.super Lcom/amazon/kcp/application/models/internal/CAsyncModel;
.source "RegisterResultsModel.java"


# instance fields
.field private cookie:Ljava/lang/String;

.field private deviceWhispersendEmail:Ljava/lang/String;

.field private privateKey:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userDeviceName:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->privateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDeviceName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->userDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getWhispersendEmail()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->deviceWhispersendEmail:Ljava/lang/String;

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->cookie:Ljava/lang/String;

    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->privateKey:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->userDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->userName:Ljava/lang/String;

    return-void
.end method

.method public setWhispersendEmail(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->deviceWhispersendEmail:Ljava/lang/String;

    return-void
.end method
