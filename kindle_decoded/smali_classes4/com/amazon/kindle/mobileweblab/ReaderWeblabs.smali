.class public Lcom/amazon/kindle/mobileweblab/ReaderWeblabs;
.super Ljava/lang/Object;
.source "ReaderWeblabs.java"

# interfaces
.implements Lcom/amazon/kindle/krx/mobileweblab/IWeblabConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTreatmentAndRecordTrigger(Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;)Ljava/lang/String;
    .locals 2

    .line 95
    const-class v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getDefaultTreatment()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getKnownWeblabs()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->values()[Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 81
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 82
    invoke-virtual {v4}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getDefaultTreatment()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
