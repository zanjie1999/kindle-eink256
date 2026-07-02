.class Lcom/amazon/device/ads/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/amazon/device/ads/Size;->width:I

    .line 27
    iput p2, p0, Lcom/amazon/device/ads/Size;->height:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "x"

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 46
    aget-object v1, p1, v0

    invoke-static {v1, v0}, Lcom/amazon/device/ads/Size;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    .line 47
    aget-object p1, p1, v2

    invoke-static {p1, v0}, Lcom/amazon/device/ads/Size;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    iput v0, p0, Lcom/amazon/device/ads/Size;->width:I

    .line 51
    iput p1, p0, Lcom/amazon/device/ads/Size;->height:I

    return-void
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 0

    .line 109
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 128
    instance-of v0, p1, Lcom/amazon/device/ads/Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lcom/amazon/device/ads/Size;

    .line 131
    iget v0, p0, Lcom/amazon/device/ads/Size;->width:I

    iget v2, p1, Lcom/amazon/device/ads/Size;->width:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/Size;->height:I

    iget p1, p1, Lcom/amazon/device/ads/Size;->height:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getHeight()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/amazon/device/ads/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/device/ads/Size;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/amazon/device/ads/Size;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/amazon/device/ads/Size;->width:I

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    iget v1, p0, Lcom/amazon/device/ads/Size;->width:I

    const-string/jumbo v2, "width"

    invoke-static {v0, v2, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 121
    iget v1, p0, Lcom/amazon/device/ads/Size;->height:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amazon/device/ads/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/device/ads/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
