.class public final Lcom/amazon/ksdk/presets/ViewContext;
.super Ljava/lang/Object;
.source "ViewContext.java"


# instance fields
.field final mOrientationMode:Lcom/amazon/ksdk/presets/PageOrientationModeType;

.field final mViewHeight:I

.field final mViewWidth:I


# direct methods
.method public constructor <init>(IILcom/amazon/ksdk/presets/PageOrientationModeType;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/amazon/ksdk/presets/ViewContext;->mViewWidth:I

    .line 21
    iput p2, p0, Lcom/amazon/ksdk/presets/ViewContext;->mViewHeight:I

    .line 22
    iput-object p3, p0, Lcom/amazon/ksdk/presets/ViewContext;->mOrientationMode:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    return-void
.end method


# virtual methods
.method public getOrientationMode()Lcom/amazon/ksdk/presets/PageOrientationModeType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/ksdk/presets/ViewContext;->mOrientationMode:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/ksdk/presets/ViewContext;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/amazon/ksdk/presets/ViewContext;->mViewWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewContext{mViewWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/ViewContext;->mViewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mViewHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/ViewContext;->mViewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mOrientationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/ViewContext;->mOrientationMode:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
