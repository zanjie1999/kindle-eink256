.class public abstract Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;
.super Landroid/view/OrientationEventListener;
.source "OrientationEventListenerBase.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected state:Lcom/amazon/readingactions/helpers/OrientationState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {p0}, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;->addListener(Landroid/view/OrientationEventListener;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 26
    sget-object p1, Lcom/amazon/readingactions/helpers/OrientationState;->PORTRAIT:Lcom/amazon/readingactions/helpers/OrientationState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/readingactions/helpers/OrientationState;->LANDSCAPE:Lcom/amazon/readingactions/helpers/OrientationState;

    :goto_0
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->state:Lcom/amazon/readingactions/helpers/OrientationState;

    return-void
.end method


# virtual methods
.method protected hasOrientationChanged()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 40
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->hasOrientationChangedToPortrait(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 41
    sget-object v0, Lcom/amazon/readingactions/helpers/OrientationState;->PORTRAIT:Lcom/amazon/readingactions/helpers/OrientationState;

    iput-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->state:Lcom/amazon/readingactions/helpers/OrientationState;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->hasOrientationChangedToLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/amazon/readingactions/helpers/OrientationState;->LANDSCAPE:Lcom/amazon/readingactions/helpers/OrientationState;

    iput-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->state:Lcom/amazon/readingactions/helpers/OrientationState;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected hasOrientationChangedToLandscape(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 57
    sget-object p1, Lcom/amazon/readingactions/helpers/OrientationState;->PORTRAIT:Lcom/amazon/readingactions/helpers/OrientationState;

    iget-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->state:Lcom/amazon/readingactions/helpers/OrientationState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected hasOrientationChangedToPortrait(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 53
    sget-object p1, Lcom/amazon/readingactions/helpers/OrientationState;->LANDSCAPE:Lcom/amazon/readingactions/helpers/OrientationState;

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->state:Lcom/amazon/readingactions/helpers/OrientationState;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
