.class public Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;
.super Landroid/widget/RelativeLayout;
.source "ComponentViewerHeader.java"


# instance fields
.field private headerSeparator:Landroid/view/View;

.field private zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

.field private zoomCloseButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;)Lcom/amazon/kcp/reader/ImageZoomActivity;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    return-object p0
.end method

.method private getBackgroundColor(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 1

    if-eqz p1, :cond_5

    .line 80
    sget-object v0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader$2;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 88
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseOneEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->sepia_mode_component_viewer_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 92
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseOneEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 93
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->green_mode_component_viewer_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->white_mode_component_viewer_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 83
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseOneEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/amazon/kindle/krl/R$color;->black_mode_component_viewer_background_updated:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/amazon/kindle/krl/R$color;->black_mode_component_viewer_background:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 97
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->white_mode_component_viewer_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getCloseButtonImage(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 1

    if-eqz p1, :cond_2

    .line 108
    sget-object v0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader$2;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->component_close_button_light:I

    return p1

    .line 111
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->component_close_button_dark:I

    return p1

    .line 118
    :cond_2
    :goto_0
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->component_close_button_light:I

    return p1
.end method

.method private getHeaderSeparatorColor(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 1

    if-eqz p1, :cond_2

    .line 131
    sget-object v0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader$2;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->white_mode_component_viewer_header_separator:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 134
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->black_mode_component_viewer_header_separator:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 141
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->white_mode_component_viewer_header_separator:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 45
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->getBackgroundColor(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 46
    sget v1, Lcom/amazon/kindle/krl/R$id;->image_zoom_close_button:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->zoomCloseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 49
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->getCloseButtonImage(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 53
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseOneEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    sget v1, Lcom/amazon/kindle/krl/R$id;->component_viewer_header_separator:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->headerSeparator:Landroid/view/View;

    .line 55
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->getHeaderSeparatorColor(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->zoomCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader$1;-><init>(Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setZoomActivity(Lcom/amazon/kcp/reader/ImageZoomActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ComponentViewerHeader;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    return-void
.end method
