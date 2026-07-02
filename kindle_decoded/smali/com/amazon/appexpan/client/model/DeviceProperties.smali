.class public Lcom/amazon/appexpan/client/model/DeviceProperties;
.super Ljava/lang/Object;
.source "DeviceProperties.java"


# static fields
.field private static final SCREEN_DENSITY_HIGH:Ljava/lang/String; = "HIGH"

.field private static final SCREEN_DENSITY_LOW:Ljava/lang/String; = "LOW"

.field private static final SCREEN_DENSITY_MEDIUM:Ljava/lang/String; = "MEDIUM"

.field private static final SCREEN_DENSITY_XHIGH:Ljava/lang/String; = "XHIGH"

.field private static final SCREEN_SIZE_LARGE:Ljava/lang/String; = "LARGE"

.field private static final SCREEN_SIZE_MEDIUM:Ljava/lang/String; = "MEDIUM"

.field private static final SCREEN_SIZE_SMALL:Ljava/lang/String; = "SMALL"

.field private static final SCREEN_SIZE_XLARGE:Ljava/lang/String; = "XLARGE"

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.model.DeviceProperties"


# instance fields
.field private architecture:Ljava/lang/String;

.field private screenDensity:Ljava/lang/String;

.field private screenSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromContext(Landroid/content/Context;)Lcom/amazon/appexpan/client/model/DeviceProperties;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazon/appexpan/client/model/DeviceProperties;

    invoke-direct {v0}, Lcom/amazon/appexpan/client/model/DeviceProperties;-><init>()V

    const-string/jumbo v1, "os.arch"

    .line 40
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/model/DeviceProperties;->setArchitecture(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/appexpan/client/R$string;->screen_size_category:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/model/DeviceProperties;->setScreenSize(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/amazon/appexpan/client/R$string;->screen_density_category:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v0, p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->setScreenDensity(Ljava/lang/String;)V

    return-object v0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to determine screen density category"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to determine screen size category"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 14
    instance-of p1, p1, Lcom/amazon/appexpan/client/model/DeviceProperties;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 14
    :cond_0
    instance-of v1, p1, Lcom/amazon/appexpan/client/model/DeviceProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/model/DeviceProperties;

    invoke-virtual {p1, p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getScreenDensity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getScreenDensity()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/DeviceProperties;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/DeviceProperties;->screenDensity:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/DeviceProperties;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 14
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getScreenDensity()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/DeviceProperties;->architecture:Ljava/lang/String;

    return-void
.end method

.method public setScreenDensity(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/DeviceProperties;->screenDensity:Ljava/lang/String;

    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/DeviceProperties;->screenSize:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceProperties(architecture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->getScreenDensity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
