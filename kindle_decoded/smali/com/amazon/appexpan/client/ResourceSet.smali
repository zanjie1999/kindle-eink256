.class public Lcom/amazon/appexpan/client/ResourceSet;
.super Ljava/lang/Object;
.source "ResourceSet.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final nameToResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/appexpan/client/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private final refNameToNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/appexpan/client/Resource;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/appexpan/client/ResourceSet;->name:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/appexpan/client/ResourceSet;->version:I

    iput-object p3, p0, Lcom/amazon/appexpan/client/ResourceSet;->nameToResourceMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazon/appexpan/client/ResourceSet;->refNameToNameMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 85
    const-class v2, Lcom/amazon/appexpan/client/ResourceSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/ResourceSet;

    .line 92
    iget-object v2, p0, Lcom/amazon/appexpan/client/ResourceSet;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/ResourceSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/appexpan/client/ResourceSet;->version:I

    iget p1, p1, Lcom/amazon/appexpan/client/ResourceSet;->version:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceByName(Ljava/lang/String;)Lcom/amazon/appexpan/client/Resource;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSet;->nameToResourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/appexpan/client/Resource;

    return-object p1
.end method

.method public getResourceByRefName(Ljava/lang/String;)Lcom/amazon/appexpan/client/Resource;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSet;->refNameToNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSet;->nameToResourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/appexpan/client/Resource;

    return-object p1

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

    .line 73
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSet;->nameToResourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/appexpan/client/ResourceSet;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSet;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget v1, p0, Lcom/amazon/appexpan/client/ResourceSet;->version:I

    add-int/2addr v0, v1

    return v0
.end method
