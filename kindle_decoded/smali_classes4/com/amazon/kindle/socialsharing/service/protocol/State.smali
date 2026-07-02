.class public Lcom/amazon/kindle/socialsharing/service/protocol/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/amazon/kindle/socialsharing/service/IWithHeaders;


# instance fields
.field private acr:Ljava/lang/String;

.field private asin:Ljava/lang/String;

.field private bookType:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

.field private deviceData:Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDeleted:Ljava/lang/String;

.field private reftag:Ljava/lang/String;

.field private shareBacklinkId:Ljava/lang/String;

.field private shareData:Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;

.field private socialNetworks:Ljava/lang/String;

.field private timestamp:J

.field private userData:Lcom/amazon/kindle/socialsharing/service/protocol/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getReftag()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->reftag:Ljava/lang/String;

    return-object v0
.end method

.method public getShareBacklinkId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->shareBacklinkId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareData()Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->shareData:Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;

    return-object v0
.end method

.method public setAcr(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->acr:Ljava/lang/String;

    return-void
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->asin:Ljava/lang/String;

    return-void
.end method

.method public setBookType(Lcom/amazon/kindle/socialsharing/service/protocol/BookType;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->bookType:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    return-void
.end method

.method public setDeviceData(Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->deviceData:Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->headers:Ljava/util/Map;

    return-void
.end method

.method public setReftag(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->reftag:Ljava/lang/String;

    return-void
.end method

.method public setShareBacklinkId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->shareBacklinkId:Ljava/lang/String;

    return-void
.end method

.method public setShareData(Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->shareData:Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;

    return-void
.end method

.method public setSocialNetworks(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->socialNetworks:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Lcom/amazon/kindle/socialsharing/service/protocol/UserData;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/State;->userData:Lcom/amazon/kindle/socialsharing/service/protocol/UserData;

    return-void
.end method
