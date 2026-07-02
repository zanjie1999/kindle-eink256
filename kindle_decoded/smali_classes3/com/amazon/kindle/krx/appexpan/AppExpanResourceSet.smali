.class public Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;
.super Ljava/lang/Object;
.source "AppExpanResourceSet.java"

# interfaces
.implements Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;


# instance fields
.field private final resourceSet:Lcom/amazon/appexpan/client/ResourceSet;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/ResourceSet;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;->resourceSet:Lcom/amazon/appexpan/client/ResourceSet;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;->resourceSet:Lcom/amazon/appexpan/client/ResourceSet;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceByName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;->resourceSet:Lcom/amazon/appexpan/client/ResourceSet;

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/ResourceSet;->getResourceByName(Ljava/lang/String;)Lcom/amazon/appexpan/client/Resource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Lcom/amazon/kindle/krx/appexpan/AppExpanResource;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/appexpan/AppExpanResource;-><init>(Lcom/amazon/appexpan/client/Resource;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceByRefName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;->resourceSet:Lcom/amazon/appexpan/client/ResourceSet;

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/ResourceSet;->getResourceByRefName(Ljava/lang/String;)Lcom/amazon/appexpan/client/Resource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Lcom/amazon/kindle/krx/appexpan/AppExpanResource;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/appexpan/AppExpanResource;-><init>(Lcom/amazon/appexpan/client/Resource;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;->resourceSet:Lcom/amazon/appexpan/client/ResourceSet;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSet;->getResourceNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;->resourceSet:Lcom/amazon/appexpan/client/ResourceSet;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/ResourceSet;->getVersion()I

    move-result v0

    return v0
.end method
