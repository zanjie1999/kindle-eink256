.class public Lcom/amazon/kindle/krx/ui/BaseLandingScreenTab;
.super Ljava/lang/Object;
.source "BaseLandingScreenTab.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/LandingScreenTab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)I
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getRootIntent(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getTitle(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/CharSequence;
    .locals 0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isActivated(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isPreactivationRequired(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
