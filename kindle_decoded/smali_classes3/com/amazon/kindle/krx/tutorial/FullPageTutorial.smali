.class public abstract Lcom/amazon/kindle/krx/tutorial/FullPageTutorial;
.super Lcom/amazon/kindle/krx/tutorial/Tutorial;
.source "FullPageTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/tutorial/FullPageTutorial$VerticalOrientation;,
        Lcom/amazon/kindle/krx/tutorial/FullPageTutorial$HorizontalOrientation;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/Tutorial;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getImage()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getOrientationAxisX()Lcom/amazon/kindle/krx/tutorial/FullPageTutorial$HorizontalOrientation;
.end method

.method public abstract getOrientationAxisY()Lcom/amazon/kindle/krx/tutorial/FullPageTutorial$VerticalOrientation;
.end method
