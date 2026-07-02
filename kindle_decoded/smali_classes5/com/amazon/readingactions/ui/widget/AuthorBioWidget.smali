.class public Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;
.super Lcom/amazon/readingactions/ui/widget/WidgetBase;
.source "AuthorBioWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;,
        Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;,
        Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;,
        Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/readingactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.widget.AuthorBioWidget"


# instance fields
.field private asinToAffinityViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

.field private followableAuthors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasMultipleAuthorSubscriptions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 99
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_author_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 99
    invoke-static {p1, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forAuthors(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->configureAffinityViews(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->configureAffinityInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->configureAffinityOnFailure(Ljava/lang/String;Z)V

    return-void
.end method

.method private configureAffinityButton(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 352
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_following:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonIcon:Landroid/widget/ImageView;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_check_icon:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 355
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_following_button_text_color:I

    .line 356
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 355
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_follow:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonIcon:Landroid/widget/ImageView;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_plus_icon:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_follow_button_background:I

    .line 361
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 360
    invoke-static {p2, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_follow_button_text_color:I

    .line 363
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 362
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 366
    :goto_0
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 367
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private configureAffinityInProgress(Ljava/lang/String;)V
    .locals 3

    .line 314
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_affinity_button_processing:I

    .line 321
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private configureAffinityOnFailure(Ljava/lang/String;Z)V
    .locals 2

    .line 335
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->configureAffinityButton(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;Z)V

    .line 343
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_error_message:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$color;->startactions_amazon_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private configureAffinityViews(Ljava/lang/String;Z)V
    .locals 2

    .line 283
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->configureAffinityButton(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;Z)V

    if-nez p2, :cond_3

    .line 293
    iget-boolean p2, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->hasMultipleAuthorSubscriptions:Z

    if-nez p2, :cond_3

    invoke-static {}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getHideFollowHint()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_hint_follow:I

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$color;->startactions_hint_grey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 294
    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    :goto_2
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p2

    .line 303
    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;
    .locals 1

    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->asinToAffinityViews:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 412
    sget-object p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->TAG:Ljava/lang/String;

    const-string v0, "asinToAffinityViews is null"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 413
    monitor-exit p0

    return-object p1

    .line 415
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->asinToAffinityViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;)Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;
    .locals 1

    .line 87
    new-instance v0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24

    move-object/from16 v9, p0

    .line 105
    iget-object v0, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 107
    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_author_bio:I

    const/4 v10, 0x0

    move-object/from16 v11, p1

    invoke-virtual {v0, v1, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    .line 110
    iget-boolean v1, v9, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->hasMultipleAuthorSubscriptions:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getHideFollowHint()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    sget v1, Lcom/amazon/kindle/ea/R$id;->affinity_hint_multiple:I

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    iget-object v2, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_hint_follow_multiple:I

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    .line 115
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :cond_1
    iget-object v1, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .line 120
    new-array v14, v13, [Landroid/widget/ImageView;

    .line 121
    iget-object v1, v9, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v9, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->asinToAffinityViews:Ljava/util/Map;

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_6

    .line 123
    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_author_bio_item:I

    invoke-virtual {v0, v1, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 125
    iget-object v1, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v6

    .line 129
    iget-object v1, v7, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    const-string v2, "AuthorAsin"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Index"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget v1, Lcom/amazon/kindle/ea/R$id;->author_image:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x2

    .line 134
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 135
    aput-object v1, v14, v15

    .line 138
    sget v1, Lcom/amazon/kindle/ea/R$id;->author_name:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    iget-object v2, v7, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v1, v7, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    sget v1, Lcom/amazon/kindle/ea/R$id;->author_bio:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 145
    sget v1, Lcom/amazon/kindle/ea/R$id;->read_less:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 146
    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_more_less_button_color:I

    .line 147
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 146
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    new-instance v3, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;

    iget-object v2, v7, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v1, v3

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object/from16 p2, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v4

    move-object v4, v5

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    move-object v10, v7

    move/from16 v7, v17

    move-object v11, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 152
    new-instance v8, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;

    iget-object v3, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v4, v19

    move-object/from16 v5, p2

    move-object/from16 v17, v14

    move-object v14, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 156
    iget-object v1, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    move-object/from16 v2, v19

    invoke-virtual {v2, v1, v3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 160
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v1, v18

    .line 163
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    move-object/from16 v20, v6

    move-object v10, v7

    move-object v11, v8

    move-object/from16 v17, v14

    .line 166
    :goto_2
    iget-object v1, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v1

    .line 167
    iget-object v2, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "AuthorAsin"

    invoke-static {v3, v2, v15}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, v9, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    iget-object v3, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 171
    iget-object v2, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result v2

    .line 173
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "AffinityInitialStatusIsFollowing"

    move-object/from16 v6, v20

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v4, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v5, "AffinityInitialStatusIsFollowing"

    invoke-static {v5, v4, v15}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    if-eqz v2, :cond_3

    .line 176
    iget-object v4, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v5, "AffinityInitialStatusIsFollowing"

    invoke-static {v5, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 179
    :cond_3
    new-instance v1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$1;)V

    .line 180
    sget v4, Lcom/amazon/kindle/ea/R$id;->affinity_change_button:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    .line 181
    sget v4, Lcom/amazon/kindle/ea/R$id;->readingactions_widget_author_bio_button_text:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonTextView:Landroid/widget/TextView;

    .line 182
    sget v4, Lcom/amazon/kindle/ea/R$id;->readingactions_widget_author_bio_button_icon:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButtonIcon:Landroid/widget/ImageView;

    .line 183
    sget v4, Lcom/amazon/kindle/ea/R$id;->affinity_hint:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    .line 185
    new-instance v4, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v5, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-direct {v4, v9, v5, v15}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;I)V

    .line 186
    iget-object v5, v1, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v4, v9, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->asinToAffinityViews:Ljava/util/Map;

    iget-object v5, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v1, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-direct {v9, v1, v2}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->configureAffinityViews(Ljava/lang/String;Z)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 191
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object/from16 v6, v20

    .line 197
    :goto_3
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsAuthorBioWidget"

    invoke-interface {v1, v2, v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-le v13, v3, :cond_5

    .line 205
    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_component_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 206
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 207
    iget-object v3, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_padding_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 208
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v3

    move/from16 v20, v22

    invoke-direct/range {v18 .. v23}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 210
    invoke-static {v1, v3}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, p1

    move-object/from16 v14, v17

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v17, v14

    .line 216
    iget-object v0, v9, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    iget-object v1, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;->applyImages(Lcom/amazon/startactions/storage/ImageBatchDownloader;[Landroid/widget/ImageView;Landroid/content/res/Resources;)V

    .line 218
    iget-object v0, v9, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 220
    new-instance v0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$1;

    invoke-direct {v0, v9}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$1;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;)V

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v12
.end method

.method public initMetricsValues()V
    .locals 5

    .line 373
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ViewedAuthorBio"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ExpandedAuthorBio"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "DisplayedAuthorBio"

    .line 378
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 379
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 382
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "AffinityInitialStatusIsFollowing"

    if-ge v1, v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusFollowed"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusUnFollowed"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusFollowedCount"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusUnFollowedCount"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    .line 396
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AuthorCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsAuthorBioWidget"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "DisplayedAuthorBioWidget"

    .line 400
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public loadData()V
    .locals 8

    .line 242
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    .line 244
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->hasMultipleAuthorSubscriptions:Z

    .line 248
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    .line 250
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    const/4 v3, 0x0

    .line 252
    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    .line 253
    iget-object v6, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    iget-object v7, v5, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 254
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    iget-object v4, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    iget-boolean v3, v5, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 256
    new-instance v4, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;

    iget-object v5, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;)V

    new-array v5, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    :cond_3
    iget-object v4, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getStoredFollowStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v3, v4

    :cond_4
    if-eqz v3, :cond_1

    .line 269
    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->cacheFollowStatus(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public prepareData()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    .line 235
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    .line 236
    iget-object v2, v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    invoke-static {v2, v1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->storeFollowStatus(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
