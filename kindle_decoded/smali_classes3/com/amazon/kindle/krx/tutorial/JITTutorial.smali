.class public abstract Lcom/amazon/kindle/krx/tutorial/JITTutorial;
.super Lcom/amazon/kindle/krx/tutorial/Tutorial;
.source "JITTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/Tutorial;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAsset()Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;
.end method

.method public getClickableText(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrientationLandScape()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getOrientationLandscape()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getOrientationLandscape()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->BOTTOM:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public abstract getOrientationPortrait()Lcom/amazon/kindle/krx/tutorial/Orientation;
.end method

.method public getPositionLandScape()Landroid/graphics/Point;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0
.end method

.method public getPositionPortrait()Landroid/graphics/Point;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTutorialView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onTextClicked(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
