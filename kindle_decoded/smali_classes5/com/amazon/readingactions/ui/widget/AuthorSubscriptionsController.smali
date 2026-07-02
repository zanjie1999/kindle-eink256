.class public final Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "AuthorSubscriptionsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;,
        Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;,
        Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;,
        Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthorSubscriptionsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthorSubscriptionsController.kt\ncom/amazon/readingactions/ui/widget/AuthorSubscriptionsController\n*L\n1#1,505:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private asinToAffinityViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

.field private hasMultipleAuthorSubscriptions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->Companion:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;)V
    .locals 2

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 53
    const-class v0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->TAG:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getAuthorSubs()Ljava/util/List;

    move-result-object p1

    .line 57
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->readingactions_author_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    invoke-static {p1, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forAuthorSubscriptions(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p1

    const-string v0, "ImageBatchDownloader.for\u2026tions_author_image_size))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    .line 63
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->asinToAffinityViews:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$configureAffinityInProgress(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->configureAffinityInProgress(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$configureAffinityOnFailure(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->configureAffinityOnFailure(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$configureAffinityViews(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->configureAffinityViews(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/ea/ui/AnimationCoordinator;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    return-object p0
.end method

.method public static final synthetic access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    return-object p0
.end method

.method public static final synthetic access$getResources$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Landroid/content/res/Resources;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final configureAffinityButton(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_following:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 285
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonIcon$EndActionsAndroidModule_lib_release()Landroid/widget/ImageView;

    move-result-object p2

    .line 286
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_check_icon:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 285
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButton$EndActionsAndroidModule_lib_release()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 288
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 287
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 289
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    .line 290
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_following_button_text_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 289
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_follow:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 295
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonIcon$EndActionsAndroidModule_lib_release()Landroid/widget/ImageView;

    move-result-object p2

    .line 296
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_plus_icon:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 295
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    .line 298
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_follow_button_text_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 297
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 300
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButton$EndActionsAndroidModule_lib_release()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 301
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_author_bio_widget_follow_button_background:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 300
    invoke-static {p2, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 305
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButton$EndActionsAndroidModule_lib_release()Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 306
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButton$EndActionsAndroidModule_lib_release()Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonIcon$EndActionsAndroidModule_lib_release()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final configureAffinityInProgress(Ljava/lang/String;)V
    .locals 3

    .line 252
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_affinity_button_processing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButtonIcon$EndActionsAndroidModule_lib_release()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButton$EndActionsAndroidModule_lib_release()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private final configureAffinityOnFailure(Ljava/lang/String;Z)V
    .locals 2

    .line 268
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->configureAffinityButton(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;Z)V

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->configureAffinityButton(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;Z)V

    .line 275
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityHintTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_error_message:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 276
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityHintTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$color;->startactions_amazon_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityHintTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final configureAffinityViews(Ljava/lang/String;Z)V
    .locals 2

    .line 223
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->configureAffinityButton(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;Z)V

    if-nez p2, :cond_2

    .line 229
    iget-boolean p2, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->hasMultipleAuthorSubscriptions:Z

    if-nez p2, :cond_2

    invoke-static {}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getHideFollowHint()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityHintTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getFollowHint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getFollowHint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 236
    sget v1, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_hint_follow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityHintTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$color;->startactions_hint_grey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityHintTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 230
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityHintTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :goto_2
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    const-string v0, "EndActionsPlugin.sdk.readerUIManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p2

    .line 243
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButton$EndActionsAndroidModule_lib_release()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private final configureAuthorBio(Landroid/view/ViewGroup;Landroid/view/View;Lcom/amazon/ea/sidecar/def/data/AuthorBioData;)V
    .locals 12

    .line 195
    sget v0, Lcom/amazon/kindle/ea/R$id;->author_bio:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 196
    sget v1, Lcom/amazon/kindle/ea/R$id;->read_less:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/Button;

    .line 198
    sget v1, Lcom/amazon/kindle/ea/R$array;->endactions_onetap_more_less_button_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 197
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 200
    new-instance v9, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;

    iget-object v3, p3, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    const-string v10, "authorBio.bio"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, v9

    move-object v2, p0

    move-object v4, v0

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 202
    new-instance v11, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;

    iget-object v3, p3, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v1, v11

    move-object v5, v9

    invoke-direct/range {v1 .. v8}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 206
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object p1, p3, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 210
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 211
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    invoke-virtual {p2, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 196
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.amazon.readingactions.ui.helpers.TextViewWithEndButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final declared-synchronized getAffinityViewForAsin(Ljava/lang/String;)Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;
    .locals 1

    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->asinToAffinityViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_ea_author_subscription:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_10

    check-cast p2, Landroid/view/ViewGroup;

    .line 106
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->hasMultipleAuthorSubscriptions:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getHideFollowHint()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    sget v0, Lcom/amazon/kindle/ea/R$id;->affinity_hint_multiple:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v2}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getFollowHint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v2}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getFollowHint()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 112
    sget v3, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_hint_follow_multiple:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getAuthorSubs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 119
    new-array v2, v0, [Landroid/widget/ImageView;

    .line 120
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->asinToAffinityViews:Ljava/util/Map;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_f

    .line 124
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v4}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getAuthorSubs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    .line 125
    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v5}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getAuthorBioList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    .line 128
    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    const-string v7, "controller"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 129
    sget v7, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_ea_author_subscription_item:I

    invoke-virtual {v6, v7, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 131
    sget v7, Lcom/amazon/kindle/ea/R$id;->author_name:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_e

    check-cast v7, Landroid/widget/TextView;

    .line 132
    sget v8, Lcom/amazon/kindle/ea/R$id;->author_image:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_d

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    .line 133
    iget-object v10, v5, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    const-string v10, "authorView"

    .line 135
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    invoke-direct {p0, p1, v6, v5}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->configureAuthorBio(Landroid/view/ViewGroup;Landroid/view/View;Lcom/amazon/ea/sidecar/def/data/AuthorBioData;)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 138
    :cond_5
    :goto_4
    new-instance v5, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;

    invoke-direct {v5}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;-><init>()V

    .line 139
    sget v10, Lcom/amazon/kindle/ea/R$id;->affinity_change_button:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_c

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->setAffinityButton$EndActionsAndroidModule_lib_release(Landroid/widget/LinearLayout;)V

    .line 140
    sget v10, Lcom/amazon/kindle/ea/R$id;->readingactions_widget_author_bio_button_text:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_b

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->setAffinityButtonTextView$EndActionsAndroidModule_lib_release(Landroid/widget/TextView;)V

    .line 141
    sget v10, Lcom/amazon/kindle/ea/R$id;->readingactions_widget_author_bio_button_icon:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_a

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->setAffinityButtonIcon$EndActionsAndroidModule_lib_release(Landroid/widget/ImageView;)V

    .line 142
    sget v10, Lcom/amazon/kindle/ea/R$id;->affinity_hint:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_9

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->setAffinityHintTextView$EndActionsAndroidModule_lib_release(Landroid/widget/TextView;)V

    .line 145
    aput-object v8, v2, v3

    .line 148
    iget-object v8, v4, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    sget v8, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v8}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    new-instance v7, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;

    iget-object v8, v4, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    const-string v10, "authorSub.asin"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, p0, v8, v3}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;I)V

    .line 151
    invoke-virtual {v5}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->getAffinityButton$EndActionsAndroidModule_lib_release()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v7, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->asinToAffinityViews:Ljava/util/Map;

    iget-object v8, v4, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    const-string v10, "authorSub.asin"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    .line 159
    iget-object v5, v4, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getStoredFollowStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 160
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_5

    :cond_6
    iget-boolean v5, v4, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    .line 161
    :goto_5
    iget-object v7, v4, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    const-string v8, "authorSub.asin"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7, v5}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->configureAffinityViews(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-le v0, v9, :cond_7

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_7

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_8

    .line 168
    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    const-string v6, "controller"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/ea/R$layout;->startactions_component_divider:I

    invoke-virtual {v5, v6, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 169
    sget v6, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v6}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 170
    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_padding_horizontal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 171
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v6

    move v9, v11

    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 172
    invoke-static {v5, v6}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    const/4 v5, 0x2

    .line 176
    invoke-static {v5}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v5

    const-string/jumbo v6, "rsMetadata"

    .line 177
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v7, "MetricsTag"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "AffinityFollowing"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v4, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v6, "EndActionsPlugin.sdk"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v4

    const-string v6, "AnyActionsFollowAuthorWidget"

    invoke-interface {v4, v6, v5}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v5, v4

    check-cast v5, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v4, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v6, "DisplayedFollowAuthorWidget"

    .line 181
    invoke-static {v6, v5, v4}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    .line 154
    monitor-exit p0

    throw p1

    .line 142
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_e
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_f
    sget-object p1, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;->Companion:Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    const-string/jumbo v3, "resources"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;->applyImages(Lcom/amazon/startactions/storage/ImageBatchDownloader;[Landroid/widget/ImageView;Landroid/content/res/Resources;)V

    .line 187
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 189
    new-instance p1, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$createView$2;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$createView$2;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 102
    :cond_10
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initMetricsValues()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v1, v0

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedFollowAuthorWidget"

    .line 96
    invoke-static {v2, v1, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    .line 87
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getAuthorSubs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->hasMultipleAuthorSubscriptions:Z

    .line 89
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getAuthorSubs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    .line 91
    new-instance v3, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    const-string v4, "authorSub.asin"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v2}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$GetStatusAsyncTask;-><init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    return-void
.end method
