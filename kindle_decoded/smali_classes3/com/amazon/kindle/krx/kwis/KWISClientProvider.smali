.class public Lcom/amazon/kindle/krx/kwis/KWISClientProvider;
.super Lcom/amazon/kindle/krx/kwis/BaseKWISClientProvider;
.source "KWISClientProvider.java"


# instance fields
.field private kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/kwis/IKWISClientHandler;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/krx/kwis/BaseKWISClientProvider;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/amazon/kindle/krx/kwis/KWISClientProvider;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/krx/kwis/KWISClientProvider;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    return-void
.end method


# virtual methods
.method public getTreatment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/krx/kwis/KWISClientProvider;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/kwis/IKWISClientHandler;->getTreatment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerDefaultExtraId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/krx/kwis/KWISClientProvider;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0}, Lcom/amazon/kindle/kwis/IKWISClientHandler;->registerDefaultExtraId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerWeblabFetchListener(Lcom/amazon/kindle/krx/kwis/IKWISFetchListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/kwis/KWISClientProvider;->kwisClientHandler:Lcom/amazon/kindle/kwis/IKWISClientHandler;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1}, Lcom/amazon/kindle/kwis/IKWISClientHandler;->registerWeblabFetchListener(Lcom/amazon/kindle/krx/kwis/IKWISFetchListener;)V

    :cond_0
    return-void
.end method
