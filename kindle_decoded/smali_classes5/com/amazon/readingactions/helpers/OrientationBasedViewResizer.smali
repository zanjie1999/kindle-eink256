.class public Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;
.super Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;
.source "OrientationBasedViewResizer.java"


# instance fields
.field private alignmentChangeDelegate:Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;

.field private shouldChangeAsymmetricPadding:Z

.field private shouldChangeAuthorBio:Z

.field private shouldChangeSymmetricPadding:Z

.field private shouldChangeWidth:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->view:Landroid/view/View;

    .line 29
    iput-boolean p3, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->shouldChangeWidth:Z

    .line 30
    iput-boolean p4, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->shouldChangeSymmetricPadding:Z

    .line 31
    iput-boolean p5, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->shouldChangeAsymmetricPadding:Z

    .line 32
    iput-boolean p6, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->shouldChangeAuthorBio:Z

    .line 33
    iput-object p7, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->alignmentChangeDelegate:Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;

    return-void
.end method

.method private determineWidthInPx(Landroid/content/Context;)I
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x4

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    sget v0, Lcom/amazon/kindle/ea/R$dimen;->readingactions_button_width_device_xlarge:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    sget v0, Lcom/amazon/kindle/ea/R$dimen;->readingactions_button_width_device_large:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    sget v0, Lcom/amazon/kindle/ea/R$dimen;->readingactions_button_width_device_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    sget v0, Lcom/amazon/kindle/ea/R$dimen;->readingactions_button_width_device_small:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    .line 135
    :cond_3
    sget v0, Lcom/amazon/kindle/ea/R$dimen;->readingactions_button_width_device_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :goto_1
    return p1
.end method


# virtual methods
.method public changeView(Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->alignmentChangeDelegate:Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;->getShouldChangeAlignment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setAlignment(Z)V

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->shouldChangeWidth:Z

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setWidth(Z)V

    .line 52
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->shouldChangeSymmetricPadding:Z

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setSymmetricPadding(Z)V

    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->shouldChangeAsymmetricPadding:Z

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setAsymmetricPadding(Z)V

    .line 58
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->shouldChangeAuthorBio:Z

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setAuthorBio()V

    :cond_4
    if-eqz p1, :cond_5

    .line 61
    sget-object p1, Lcom/amazon/readingactions/helpers/OrientationState;->PORTRAIT:Lcom/amazon/readingactions/helpers/OrientationState;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/amazon/readingactions/helpers/OrientationState;->LANDSCAPE:Lcom/amazon/readingactions/helpers/OrientationState;

    :goto_0
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->state:Lcom/amazon/readingactions/helpers/OrientationState;

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->hasOrientationChanged()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->changeView(Z)V

    :cond_1
    return-void
.end method

.method public setAlignment(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->alignmentChangeDelegate:Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;->setAlignment(Z)V

    :cond_0
    return-void
.end method

.method public setAsymmetricPadding(Z)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_title_widget_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 108
    iget-object v1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->readingactions_title_widget_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 109
    invoke-static {}, Lcom/amazon/readingactions/ui/helpers/TabletExperience;->shouldUseTabletExperience()Z

    move-result v2

    if-eqz p1, :cond_0

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ea/R$dimen;->readingactions_title_widget_left_padding_landscape:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v0, p1

    .line 112
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_title_widget_right_padding_landscape:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v1, p1

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setAuthorBio()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->view:Landroid/view/View;

    check-cast v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 84
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->reloadText()V

    return-void
.end method

.method public setSymmetricPadding(Z)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_widget_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 94
    invoke-static {}, Lcom/amazon/readingactions/ui/helpers/TabletExperience;->shouldUseTabletExperience()Z

    move-result v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ea/R$dimen;->readingactions_widget_padding_horizontal_landscape:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v0, p1

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setWidth(Z)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 71
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    invoke-static {}, Lcom/amazon/readingactions/ui/helpers/TabletExperience;->shouldUseTabletExperience()Z

    move-result v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->determineWidthInPx(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
