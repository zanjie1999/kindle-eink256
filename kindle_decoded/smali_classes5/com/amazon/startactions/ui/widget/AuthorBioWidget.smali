.class public Lcom/amazon/startactions/ui/widget/AuthorBioWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "AuthorBioWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;,
        Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;,
        Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;,
        Lcom/amazon/startactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.AuthorBioWidget"


# instance fields
.field private asinToAffinityViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;",
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
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 99
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->startactions_author_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 99
    invoke-static {p1, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forAuthors(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->configureAffinityViews(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->configureAffinityInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->configureAffinityOnFailure(Ljava/lang/String;Z)V

    return-void
.end method

.method private configureAffinityInProgress(Ljava/lang/String;)V
    .locals 3

    .line 337
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object v0, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_affinity_button_processing:I

    .line 344
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private configureAffinityOnFailure(Ljava/lang/String;Z)V
    .locals 2

    .line 358
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 365
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_following:I

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    .line 366
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->anyactions_following_check:I

    .line 367
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 366
    invoke-virtual {p2, v1, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_follow:I

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    .line 371
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/ea/R$array;->anyactions_amzn_smile:I

    .line 372
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 371
    invoke-virtual {p2, v1, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 375
    :goto_0
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_error_message:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 378
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$color;->startactions_amazon_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private configureAffinityViews(Ljava/lang/String;Z)V
    .locals 3

    .line 298
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 306
    iget-object v1, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_following:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 307
    iget-object v1, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v2, Lcom/amazon/kindle/ea/R$array;->anyactions_following_check:I

    .line 308
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 307
    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_follow:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 312
    iget-object v1, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v2, Lcom/amazon/kindle/ea/R$array;->anyactions_amzn_smile:I

    .line 313
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 312
    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 315
    :goto_0
    iget-object v0, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v0, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p2, :cond_4

    .line 319
    iget-boolean p2, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->hasMultipleAuthorSubscriptions:Z

    if-nez p2, :cond_4

    invoke-static {}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getHideFollowHint()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 322
    :cond_2
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_hint_follow:I

    .line 323
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object p2, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    .line 325
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 324
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 320
    :cond_4
    :goto_2
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private declared-synchronized getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;
    .locals 1

    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->asinToAffinityViews:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 425
    sget-object p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->TAG:Ljava/lang/String;

    const-string v0, "asinToAffinityViews is null"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 426
    monitor-exit p0

    return-object p1

    .line 428
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->asinToAffinityViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;)Lcom/amazon/startactions/ui/widget/AuthorBioWidget;
    .locals 1

    .line 87
    new-instance v0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24

    move-object/from16 v9, p0

    .line 105
    iget-object v0, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 107
    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_author_bio:I

    const/4 v10, 0x0

    move-object/from16 v11, p1

    invoke-virtual {v0, v1, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    .line 110
    iget-boolean v1, v9, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->hasMultipleAuthorSubscriptions:Z

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
    iget-object v2, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->followHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

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
    iget-object v1, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .line 120
    new-array v14, v13, [Landroid/widget/ImageView;

    .line 121
    iget-object v1, v9, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v9, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->asinToAffinityViews:Ljava/util/Map;

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_6

    .line 123
    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_author_bio_item:I

    invoke-virtual {v0, v1, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 125
    iget-object v1, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

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

    check-cast v5, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    .line 146
    sget v1, Lcom/amazon/kindle/ea/R$id;->read_less:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 147
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 148
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 147
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    new-instance v3, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;

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

    invoke-direct/range {v1 .. v8}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 153
    new-instance v8, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;

    iget-object v3, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v4, v19

    move-object/from16 v5, p2

    move-object/from16 v17, v14

    move-object v14, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 156
    iget-object v1, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    move-object/from16 v2, v19

    invoke-virtual {v2, v1, v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

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
    iget-object v1, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v1

    .line 167
    iget-object v2, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "AuthorAsin"

    invoke-static {v3, v2, v15}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, v9, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

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
    iget-object v4, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v5, "AffinityInitialStatusIsFollowing"

    invoke-static {v5, v4, v15}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    if-eqz v2, :cond_3

    .line 176
    iget-object v4, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v5, "AffinityInitialStatusIsFollowing"

    invoke-static {v5, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 179
    :cond_3
    new-instance v1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;-><init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;)V

    .line 180
    sget v4, Lcom/amazon/kindle/ea/R$id;->affinity_change_button:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    .line 181
    sget v4, Lcom/amazon/kindle/ea/R$id;->affinity_hint:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityTextView:Landroid/widget/TextView;

    .line 183
    new-instance v4, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;

    iget-object v5, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-direct {v4, v9, v5, v15}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;-><init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;I)V

    .line 184
    iget-object v5, v1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v4, v1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v5, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button:I

    .line 189
    invoke-static {v5}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 188
    invoke-static {v4, v5}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v4, v1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityViewHolder;->affinityButton:Landroid/widget/Button;

    sget v5, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button_text_color:I

    .line 191
    invoke-static {v5}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v4, v9, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->asinToAffinityViews:Ljava/util/Map;

    iget-object v5, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object v1, v10, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-direct {v9, v1, v2}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->configureAffinityViews(Ljava/lang/String;Z)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 196
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object/from16 v6, v20

    .line 202
    :goto_3
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsAuthorBioWidget"

    invoke-interface {v1, v2, v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-le v13, v3, :cond_5

    .line 210
    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_component_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 211
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 212
    iget-object v3, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_padding_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 213
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v3

    move/from16 v20, v22

    invoke-direct/range {v18 .. v23}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 215
    invoke-static {v1, v3}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 216
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

    .line 221
    iget-object v0, v9, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;

    move-object/from16 v2, v17

    invoke-direct {v1, v9, v2}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;[Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->apply(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    .line 233
    iget-object v0, v9, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 235
    new-instance v0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$2;

    invoke-direct {v0, v9}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$2;-><init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;)V

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v12
.end method

.method public initMetricsValues()V
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ViewedAuthorBio"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ExpandedAuthorBio"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "DisplayedAuthorBio"

    .line 391
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 392
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 395
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 396
    :goto_0
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "AffinityInitialStatusIsFollowing"

    if-ge v1, v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusFollowed"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusUnFollowed"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusFollowedCount"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "AffinityStatusUnFollowedCount"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AuthorCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsAuthorBioWidget"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "DisplayedAuthorBioWidget"

    .line 413
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public loadData()V
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    .line 259
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

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
    iput-boolean v2, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->hasMultipleAuthorSubscriptions:Z

    .line 263
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->authorSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    .line 265
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

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

    .line 267
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

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

    .line 268
    iget-object v6, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    iget-object v7, v5, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 269
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->followableAuthors:Ljava/util/Set;

    iget-object v4, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    iget-boolean v3, v5, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 271
    new-instance v4, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;

    iget-object v5, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;-><init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;)V

    new-array v5, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    :cond_3
    iget-object v4, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getStoredFollowStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v3, v4

    :cond_4
    if-eqz v3, :cond_1

    .line 284
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

    .line 247
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    .line 250
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

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

    .line 251
    iget-object v2, v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    invoke-static {v2, v1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->storeFollowStatus(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
