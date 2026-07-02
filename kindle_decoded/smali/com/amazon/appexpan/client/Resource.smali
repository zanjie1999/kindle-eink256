.class public Lcom/amazon/appexpan/client/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private final file:Ljava/io/File;

.field private final name:Ljava/lang/String;

.field private final refName:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/appexpan/client/Resource;->name:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/appexpan/client/Resource;->version:I

    iput-object p3, p0, Lcom/amazon/appexpan/client/Resource;->refName:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/appexpan/client/Resource;->file:Ljava/io/File;

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

    .line 38
    const-class v2, Lcom/amazon/appexpan/client/Resource;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/Resource;

    .line 45
    iget-object v2, p0, Lcom/amazon/appexpan/client/Resource;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/appexpan/client/Resource;->version:I

    iget p1, p1, Lcom/amazon/appexpan/client/Resource;->version:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/appexpan/client/Resource;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/appexpan/client/Resource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/amazon/appexpan/client/Resource;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/amazon/appexpan/client/Resource;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget v1, p0, Lcom/amazon/appexpan/client/Resource;->version:I

    add-int/2addr v0, v1

    return v0
.end method
