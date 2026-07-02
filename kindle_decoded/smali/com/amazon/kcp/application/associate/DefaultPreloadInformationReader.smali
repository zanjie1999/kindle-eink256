.class Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;
.super Ljava/lang/Object;
.source "DefaultPreloadInformationReader.java"

# interfaces
.implements Lcom/amazon/kcp/application/associate/PreloadInformationReader;


# instance fields
.field private properties:Ljava/util/Properties;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;->properties:Ljava/util/Properties;

    .line 22
    invoke-static {p1}, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;->createAssociateTagKeys(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 23
    invoke-static {p1}, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;->createAssociateTagValues(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;->ensureValidKeyValuePairs([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;->setPropertiesFromKeyValuePairs([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static createAssociateTagKeys(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/krl/R$array;->default_associate_tag_keys:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static createAssociateTagValues(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/krl/R$array;->default_associate_tag_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static ensureValidKeyValuePairs([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/InvalidParameterException;
        }
    .end annotation

    .line 37
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Associate tag key and value arrays are not the same size. \nKey list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\nvalue list size: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPropertiesFromKeyValuePairs([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v0, 0x0

    .line 29
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 30
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->rot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    aget-object v2, p2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;->properties:Ljava/util/Properties;

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreloadInformation()Lcom/amazon/kcp/application/associate/PreloadInformationResult;
    .locals 3

    .line 61
    new-instance v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    invoke-direct {v0}, Lcom/amazon/kcp/application/associate/PreloadInformationResult;-><init>()V

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->success:Z

    .line 63
    new-instance v1, Ljava/util/Properties;

    iget-object v2, p0, Lcom/amazon/kcp/application/associate/DefaultPreloadInformationReader;->properties:Ljava/util/Properties;

    invoke-direct {v1, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v1, v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
