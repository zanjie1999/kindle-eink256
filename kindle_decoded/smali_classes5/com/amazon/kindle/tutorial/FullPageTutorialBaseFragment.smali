.class public abstract Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "FullPageTutorialBaseFragment.java"


# static fields
.field private static final BODY:Ljava/lang/String; = "body"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final UI_KEY:Ljava/lang/String; = "userInterface"

.field private static final VIDEO:Ljava/lang/String; = "video"


# instance fields
.field private isTablet:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private changeLayoutOrder(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .line 266
    sget v0, Lcom/amazon/kindle/krl/R$id;->full_page_title:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    sget v1, Lcom/amazon/kindle/krl/R$id;->full_page_body:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 268
    sget v2, Lcom/amazon/kindle/krl/R$id;->media_container:I

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 269
    sget v3, Lcom/amazon/kindle/krl/R$id;->full_page_button_container:I

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 271
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "title"

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const-string v5, "body"

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    const-string v5, "image"

    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    const-string/jumbo v5, "video"

    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 287
    :cond_4
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupMediaContainer(Landroid/view/View;)V
    .locals 3

    .line 291
    sget v0, Lcom/amazon/kindle/krl/R$id;->media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 292
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getMediaScreenHeightPercentage()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 305
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getMediaAspectRatio()I

    move-result v1

    mul-int v1, v1, v0

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getUserInterface()Lcom/amazon/kindle/tutorial/UserInterface;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->full_page_frame_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 147
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getWrapContent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$integer;->fullpage_max_width_percentage:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int v1, v1, v3

    div-int/lit8 v1, v1, 0x64

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 154
    :cond_2
    iget-boolean v2, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->isTablet:Z

    if-eqz v2, :cond_3

    .line 155
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$integer;->fullpage_max_width_percentage:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$integer;->fullpage_max_height_percentage:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    mul-int v1, v1, v4

    div-int/lit8 v1, v1, 0x64

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 159
    :cond_3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->setupMediaContainer(Landroid/view/View;)V

    .line 166
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->setImage(Landroid/view/View;)V

    goto :goto_1

    .line 169
    :cond_4
    sget v1, Lcom/amazon/kindle/krl/R$id;->full_page_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->setVideo(Landroid/view/View;)V

    goto :goto_2

    .line 176
    :cond_5
    sget v1, Lcom/amazon/kindle/krl/R$id;->full_page_video:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "userInterface"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->isTablet:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 62
    sget p3, Lcom/amazon/kindle/krl/R$layout;->full_page_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 64
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p3

    .line 66
    sget v0, Lcom/amazon/kindle/krl/R$integer;->fullpage_max_width_percentage:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 67
    sget v1, Lcom/amazon/kindle/krl/R$integer;->fullpage_max_height_percentage:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 68
    sget v2, Lcom/amazon/kindle/krl/R$integer;->fullpage_max_dimen_extra:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 71
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getWrapContent()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 72
    iget p3, p3, Landroid/graphics/Point;->x:I

    mul-int p3, p3, v0

    div-int/lit8 p3, p3, 0x64

    add-int v4, p3, v2

    const/4 p3, -0x2

    goto :goto_0

    .line 76
    :cond_0
    iget-boolean v3, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->isTablet:Z

    if-eqz v3, :cond_1

    .line 77
    iget v3, p3, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v0

    div-int/lit8 v3, v3, 0x64

    add-int v4, v3, v2

    .line 78
    iget p3, p3, Landroid/graphics/Point;->y:I

    mul-int p3, p3, v1

    div-int/lit8 p3, p3, 0x64

    add-int/2addr p3, v2

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    .line 85
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object p3, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {p3}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getWrapContent()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->isTablet:Z

    if-nez p3, :cond_2

    .line 90
    sget p3, Lcom/amazon/kindle/krl/R$dimen;->fullpage_padding_top_content_wrapped:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 91
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->fullpage_padding_side_content_wrapped:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 92
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->fullpage_padding_bottom_content_wrapped:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 93
    invoke-virtual {p1, v0, p3, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->setupText(Landroid/view/View;)V

    .line 100
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasImage()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 101
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->setImage(Landroid/view/View;)V

    goto :goto_1

    .line 103
    :cond_3
    move-object p2, p1

    check-cast p2, Landroid/widget/RelativeLayout;

    sget p3, Lcom/amazon/kindle/krl/R$id;->full_page_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 107
    :goto_1
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasVideo()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 108
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->setVideo(Landroid/view/View;)V

    goto :goto_2

    .line 110
    :cond_4
    move-object p2, p1

    check-cast p2, Landroid/widget/RelativeLayout;

    sget p3, Lcom/amazon/kindle/krl/R$id;->full_page_video:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 113
    :goto_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->setupMediaContainer(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->setUpButtons(Landroid/view/View;)V

    .line 118
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getLayoutOrder()Ljava/util/List;

    move-result-object p2

    .line 119
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 120
    sget p3, Lcom/amazon/kindle/krl/R$id;->main_tutorial_content:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_5

    .line 122
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->changeLayoutOrder(Ljava/util/List;Landroid/widget/LinearLayout;)V

    :cond_5
    return-object p1
.end method

.method public setImage(Landroid/view/View;)V
    .locals 2

    .line 190
    sget v0, Lcom/amazon/kindle/krl/R$id;->full_page_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getImageMetadata()Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 195
    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setImage(Landroid/widget/ImageView;Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public abstract setUpButtons(Landroid/view/View;)V
.end method

.method public setVideo(Landroid/view/View;)V
    .locals 4

    .line 205
    sget v0, Lcom/amazon/kindle/krl/R$id;->full_page_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 206
    sget v1, Lcom/amazon/kindle/krl/R$id;->full_page_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 207
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getVideoMetadata()Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 211
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setVideo(Landroid/view/TextureView;Landroid/widget/ImageView;Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/app/Activity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setupText(Landroid/view/View;)V
    .locals 5

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 223
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    sget v1, Lcom/amazon/kindle/krl/R$id;->full_page_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-boolean v2, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->isTablet:Z

    if-eqz v2, :cond_0

    .line 229
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->fullpage_title_text_large_screen:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 231
    :cond_0
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->fullpage_title_text_small_screen:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :cond_1
    sget v1, Lcom/amazon/kindle/krl/R$id;->full_page_body:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 236
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 238
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->userInterface:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->isForceCenterContent()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->body_text_length_centered:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-gt v1, v2, :cond_3

    :cond_2
    const/16 v1, 0x11

    .line 240
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 242
    :cond_3
    iget-boolean v1, p0, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->isTablet:Z

    if-eqz v1, :cond_4

    .line 243
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->fullpage_body_text_large_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 245
    :cond_4
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->fullpage_body_text_small_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 247
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method
