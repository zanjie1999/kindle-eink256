.class public Lcom/amazon/krf/platform/element/ImagePageElement;
.super Lcom/amazon/krf/platform/element/TextPageElement;
.source "ImagePageElement.java"


# instance fields
.field private mResourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/platform/element/TextPageElement;-><init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/amazon/krf/platform/element/ImagePageElement;->mResourceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/krf/platform/element/ImagePageElement;->mResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/krf/platform/element/ImagePageElement;->mResourceId:Ljava/lang/String;

    return-void
.end method
