.class public Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;
    }
.end annotation


# instance fields
.field private endpoint:Ljava/lang/String;

.field private isEnabled:Z

.field private profileLink:Lcom/amazon/ras/uservalidation/models/ProfileLink;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;

    invoke-direct {v0}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;-><init>()V

    .line 58
    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENABLED:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->setEnabled(Z)V

    .line 59
    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENDPOINT:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->setEndpoint(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->PROFILE_LINK:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v1}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->setProfileLink(Lcom/amazon/ras/uservalidation/models/ProfileLink;)V

    return-object v0
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->profileLink:Lcom/amazon/ras/uservalidation/models/ProfileLink;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->isEnabled:Z

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public setProfileLink(Lcom/amazon/ras/uservalidation/models/ProfileLink;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->profileLink:Lcom/amazon/ras/uservalidation/models/ProfileLink;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->profileLink:Lcom/amazon/ras/uservalidation/models/ProfileLink;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->isEnabled:Z

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->endpoint:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "DeviceConfiguration{ProfileLink=%s, Enabled=%b, Endpoint=%s}"

    .line 67
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
