.class public final Lcom/amazon/ksdk/presets/DeviceContext;
.super Ljava/lang/Object;
.source "DeviceContext.java"


# instance fields
.field final mDevice:Lcom/amazon/ksdk/presets/DeviceType;

.field final mDisplayDpi:I

.field final mScaleFactor:F


# direct methods
.method public constructor <init>(Lcom/amazon/ksdk/presets/DeviceType;IF)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mDevice:Lcom/amazon/ksdk/presets/DeviceType;

    .line 20
    iput p2, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mDisplayDpi:I

    .line 21
    iput p3, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mScaleFactor:F

    return-void
.end method


# virtual methods
.method public getDevice()Lcom/amazon/ksdk/presets/DeviceType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mDevice:Lcom/amazon/ksdk/presets/DeviceType;

    return-object v0
.end method

.method public getDisplayDpi()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mDisplayDpi:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mScaleFactor:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceContext{mDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mDevice:Lcom/amazon/ksdk/presets/DeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mDisplayDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mDisplayDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/DeviceContext;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
