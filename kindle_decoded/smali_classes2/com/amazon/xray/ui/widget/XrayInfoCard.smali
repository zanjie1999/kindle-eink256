.class public Lcom/amazon/xray/ui/widget/XrayInfoCard;
.super Lcom/amazon/kindle/krx/ui/InfoCardView;
.source "XrayInfoCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;
    }
.end annotation


# static fields
.field private static final JAPANESE_LANGUAGE_CODE:Ljava/lang/String; = "ja"


# instance fields
.field private entity:Lcom/amazon/xray/model/object/Entity;

.field private final infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

.field private metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/InfoCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p1, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;-><init>(Lcom/amazon/xray/ui/widget/XrayInfoCard$1;)V

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/metrics/MetricsRecorder;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->showThankYouMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->hideInfoCardDetails()V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->showFeedbackViews()V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->hideFeedbackViews()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->showInfoCardDetails()V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/xray/ui/widget/XrayInfoCard;)Lcom/amazon/xray/model/object/Entity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->entity:Lcom/amazon/xray/model/object/Entity;

    return-object p0
.end method

.method private createDescriptionViewOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 124
    new-instance v0, Lcom/amazon/xray/ui/widget/XrayInfoCard$2;

    invoke-direct {v0, p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$2;-><init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    return-object v0
.end method

.method private createErrorTypeSelectionBackOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 191
    new-instance v0, Lcom/amazon/xray/ui/widget/XrayInfoCard$6;

    invoke-direct {v0, p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$6;-><init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    return-object v0
.end method

.method private createGoToViewOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 138
    new-instance v0, Lcom/amazon/xray/ui/widget/XrayInfoCard$3;

    invoke-direct {v0, p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$3;-><init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    return-object v0
.end method

.method private createNoTextViewOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 175
    new-instance v0, Lcom/amazon/xray/ui/widget/XrayInfoCard$5;

    invoke-direct {v0, p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$5;-><init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    return-object v0
.end method

.method private createOnNavigateToSourceRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 115
    new-instance v0, Lcom/amazon/xray/ui/widget/XrayInfoCard$1;

    invoke-direct {v0, p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$1;-><init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    return-object v0
.end method

.method private createYesTextViewOnClickListener(Lcom/amazon/kindle/krx/content/IContentSelection;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 159
    new-instance v0, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$4;-><init>(Lcom/amazon/xray/ui/widget/XrayInfoCard;Lcom/amazon/kindle/krx/content/IContentSelection;)V

    return-object v0
.end method

.method private hideFeedbackViews()V
    .locals 2

    .line 358
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_error_type_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$800(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private hideInfoCardDetails()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$400(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$500(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1700(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$300(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Lcom/amazon/xray/ui/widget/DescriptionView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method

.method private setUpFeedbackViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/FeedbackErrorType;",
            ">;)V"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_info_card_feedback_question:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1602(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_info_card_feedback_helpful:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$502(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_info_card_feedback_separator:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1702(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 293
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_info_card_feedback_not_helpful:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$602(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 294
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_info_card_feedback_thankyou:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1802(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 297
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_error_type_selection_list:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$702(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 298
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_info_card_back_button:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$802(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 299
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_subtitle_divider:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$2002(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_card_sub_title:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1902(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1900(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/amazon/xray/util/DebugUtil;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "sans-serif"

    .line 304
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1900(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Amazon-Ember-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1900(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    :cond_1
    :goto_0
    sget v0, Lcom/amazon/kindle/xray/R$layout;->xray_info_card_error_type_row_v2:I

    .line 314
    new-instance v1, Lcom/amazon/xray/ui/adapter/XrayInfoCardErrorTypeListAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/amazon/xray/ui/adapter/XrayInfoCardErrorTypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 315
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$700(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->setupHelpfulQuestionsBasedOnCurrentLocale()V

    return-void
.end method

.method private setupHelpfulQuestionsBasedOnCurrentLocale()V
    .locals 5

    .line 394
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$500(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/xray/R$dimen;->xray_feedback_question_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 401
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/xray/R$dimen;->xray_feedback_question_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/xray/R$string;->xray_info_card_feedback_question:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$500(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/xray/R$dimen;->xray_feedback_question_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/xray/R$dimen;->xray_feedback_question_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 408
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/xray/R$dimen;->xray_feedback_question_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/xray/R$dimen;->xray_feedback_question_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private showFeedbackViews()V
    .locals 2

    .line 366
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_error_type_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$800(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showInfoCardDetails()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$500(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1700(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$400(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$300(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Lcom/amazon/xray/ui/widget/DescriptionView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 351
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->setupHelpfulQuestionsBasedOnCurrentLocale()V

    return-void
.end method

.method private showThankYouMessage()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$500(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1700(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    new-instance v0, Lcom/amazon/xray/ui/widget/ThankYouFeedbackToast;

    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/xray/ui/widget/ThankYouFeedbackToast;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/ThankYouFeedbackToast;->makeToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public configureInfoCard(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/kindle/krx/content/IContentSelection;Ljava/util/List;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/object/Entity;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/FeedbackErrorType;",
            ">;",
            "Lcom/amazon/xray/metrics/MetricsRecorder;",
            ")V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->entity:Lcom/amazon/xray/model/object/Entity;

    .line 84
    iput-object p4, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    .line 86
    iget-object p4, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_info_card_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p4, v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$102(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 87
    iget-object p4, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_info_card_entity_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p4, v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$202(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 88
    iget-object p4, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_info_card_description:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/ui/widget/DescriptionView;

    invoke-static {p4, v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$302(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Lcom/amazon/xray/ui/widget/DescriptionView;)Lcom/amazon/xray/ui/widget/DescriptionView;

    .line 89
    iget-object p4, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_info_card_open_link:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p4, v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$402(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 92
    invoke-direct {p0, p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->setUpFeedbackViews(Ljava/util/List;)V

    .line 95
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$100(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/amazon/kindle/xray/R$string;->xray_title_with_colon:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 95
    invoke-virtual {p4, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$300(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Lcom/amazon/xray/ui/widget/DescriptionView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getDescription()Lcom/amazon/xray/model/object/Description;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/amazon/xray/ui/widget/DescriptionView;->setDescription(Lcom/amazon/xray/model/object/Description;)V

    .line 100
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$300(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Lcom/amazon/xray/ui/widget/DescriptionView;

    move-result-object p3

    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->createOnNavigateToSourceRunnable()Ljava/lang/Runnable;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/amazon/xray/ui/widget/DescriptionView;->setOnNavigateToSourceRunnable(Ljava/lang/Runnable;)V

    .line 101
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$300(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Lcom/amazon/xray/ui/widget/DescriptionView;

    move-result-object p3

    const-string p4, "XrayInfoCard"

    invoke-virtual {p3, p4}, Lcom/amazon/xray/ui/widget/DescriptionView;->setReadingStreamsContext(Ljava/lang/String;)V

    .line 102
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$300(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Lcom/amazon/xray/ui/widget/DescriptionView;

    move-result-object p3

    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->createDescriptionViewOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$400(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->createGoToViewOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$500(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p2}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->createYesTextViewOnClickListener(Lcom/amazon/kindle/krx/content/IContentSelection;)Landroid/view/View$OnClickListener;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->createNoTextViewOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$700(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/ListView;

    move-result-object p3

    new-instance p4, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;

    .line 110
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p2, p0}, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/xray/ui/widget/XrayInfoCard;)V

    .line 109
    invoke-virtual {p3, p4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$800(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->createErrorTypeSelectionBackOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getNameForMetrics()Ljava/lang/String;
    .locals 1

    const-string v0, "XrayInfoCard"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .line 209
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_title_with_colon:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-virtual {v3}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method resetInfoCardAndShowThankYouMessage()V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->hideFeedbackViews()V

    .line 325
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->showInfoCardDetails()V

    .line 326
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->showThankYouMessage()V

    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 8

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getInfoCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 221
    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_title_with_colon:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, ""

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v4, Landroid/text/SpannableString;

    sget v5, Lcom/amazon/kindle/xray/R$string;->xray_title_with_colon:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->entity:Lcom/amazon/xray/model/object/Entity;

    .line 223
    invoke-virtual {v7}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 222
    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getInfoCardTitleColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x12

    invoke-virtual {v4, v0, v6, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 226
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getInfoCardSubtitleColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 227
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 226
    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 228
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$100(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$200(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-static {v1, v2}, Lcom/amazon/xray/ui/util/EntityIconUtil;->getLargeIcon(Lcom/amazon/xray/ui/util/XrayThemeUtil;Lcom/amazon/xray/model/object/Entity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$300(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Lcom/amazon/xray/ui/widget/DescriptionView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/DescriptionView;->setTheme(Lcom/amazon/xray/ui/util/XrayThemeUtil;)V

    .line 235
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$300(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Lcom/amazon/xray/ui/widget/DescriptionView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getInfoCardTextViewBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 236
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_error_type_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getInfoCardTextViewBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v0

    .line 240
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v2}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1700(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1800(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1900(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$2000(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getFeedbackErrorSelectionTitleDividerBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$color;->xray_info_card_link_text_color_v2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$600(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$500(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$400(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$800(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/XrayInfoCard;->infoCardHolder:Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;->access$1900(Lcom/amazon/xray/ui/widget/XrayInfoCard$InfoCardViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$color;->info_card_v2_content_text_color_grey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
