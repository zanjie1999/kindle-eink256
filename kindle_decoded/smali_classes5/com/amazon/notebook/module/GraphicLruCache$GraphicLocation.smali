.class public Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;
.super Ljava/lang/Object;
.source "GraphicLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/GraphicLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphicLocation"
.end annotation


# instance fields
.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private height:I

.field private start:Lcom/amazon/kindle/krx/reader/IPosition;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 39
    iput-object p2, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 40
    iput p3, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->width:I

    .line 41
    iput p4, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 70
    :cond_1
    check-cast p1, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;

    .line 71
    invoke-virtual {p0}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p1}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_1
    if-ne v2, v4, :cond_6

    .line 72
    invoke-virtual {p0}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {p1}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    :cond_5
    if-ne v2, v3, :cond_6

    .line 73
    invoke-virtual {p0}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 74
    invoke-virtual {p0}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->getHeight()I

    move-result p1

    if-ne v2, p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_7
    :goto_4
    return v1
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->height:I

    return v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-object v3, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget v1, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget v1, p0, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;->height:I

    add-int/2addr v0, v1

    return v0
.end method
