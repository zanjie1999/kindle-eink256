.class public Lcom/amazon/kindle/store/InAppStoreManager;
.super Lcom/amazon/kindle/store/AbstractStoreManager;
.source "InAppStoreManager.java"


# instance fields
.field private storeController:Lcom/amazon/kcp/store/IWebStoreController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/store/IWebStoreController;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/store/AbstractStoreManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/store/InAppStoreManager;->storeController:Lcom/amazon/kcp/store/IWebStoreController;

    .line 35
    iput-object p2, p0, Lcom/amazon/kindle/store/InAppStoreManager;->storeController:Lcom/amazon/kcp/store/IWebStoreController;

    return-void
.end method


# virtual methods
.method public getStoreHostnameFromPfm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z
    .locals 2

    .line 41
    sget-object v0, Lcom/amazon/kindle/store/InAppStoreManager$1;->$SwitchMap$com$amazon$kindle$krx$store$IStoreManager$StorePageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
