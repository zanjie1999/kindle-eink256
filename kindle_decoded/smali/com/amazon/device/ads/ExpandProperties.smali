.class Lcom/amazon/device/ads/ExpandProperties;
.super Ljava/lang/Object;
.source "ExpandProperties.java"


# instance fields
.field private height:I

.field private final isModal:Z

.field private final jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private useCustomClose:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ExpandProperties;-><init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 23
    iput v0, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Z

    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    return-void
.end method


# virtual methods
.method public fromJSONObject(Lorg/json/JSONObject;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    iget v1, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    const-string/jumbo v2, "width"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    iget v1, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    const-string v2, "height"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    .line 104
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    iget-boolean v1, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    const-string/jumbo v2, "useCustomClose"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    return v0
.end method

.method public getUseCustomClose()Ljava/lang/Boolean;
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    return-void
.end method

.method public setUseCustomClose(Ljava/lang/Boolean;)V
    .locals 0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    return-void
.end method

.method public toClone()Lcom/amazon/device/ads/ExpandProperties;
    .locals 2

    .line 74
    new-instance v0, Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/ExpandProperties;-><init>()V

    .line 75
    iget v1, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    iput v1, v0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 76
    iget v1, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    iput v1, v0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    .line 77
    iget-boolean v1, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    iput-boolean v1, v0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    iget v2, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    const-string/jumbo v3, "width"

    invoke-virtual {v1, v0, v3, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 94
    iget-object v1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    iget v2, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    const-string v3, "height"

    invoke-virtual {v1, v0, v3, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 95
    iget-object v1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    iget-boolean v2, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Z

    const-string/jumbo v3, "useCustomClose"

    invoke-virtual {v1, v0, v3, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 96
    iget-object v1, p0, Lcom/amazon/device/ads/ExpandProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "isModal"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/device/ads/ExpandProperties;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
