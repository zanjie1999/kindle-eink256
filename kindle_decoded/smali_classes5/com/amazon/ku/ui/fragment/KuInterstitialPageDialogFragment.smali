.class public Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;
.super Landroid/app/DialogFragment;
.source "KuInterstitialPageDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/amazon/ku/ui/KuExpiredBooksAdapter;

.field private body:Landroid/widget/TextView;

.field private contentView:Landroid/view/View;

.field private gridView:Landroid/widget/GridView;

.field private header:Landroid/widget/TextView;

.field private legalese:Lcom/amazon/ku/ui/view/LinkableTextView;

.field private noButton:Landroid/widget/Button;

.field private yesButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->setButtonsEnabled(Z)V

    return-void
.end method

.method private computeCoverSize(I)Landroid/graphics/Point;
    .locals 4

    .line 205
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/graphics/Point;

    sget v2, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_cover_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_cover_height:I

    .line 207
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 209
    sget v2, Lcom/amazon/kindle/ku/R$integer;->ku_expiry_grid_column_count:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-lt p1, v2, :cond_0

    return-object v1

    .line 214
    :cond_0
    sget v2, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_grid_view_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    .line 216
    sget p1, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_cover_max_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Point;->x:I

    return-object v1

    .line 220
    :cond_1
    sget v2, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_grid_view_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 221
    invoke-direct {p0, p1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->getHorizontalGridSpacing(I)I

    move-result v2

    add-int/lit8 v3, p1, -0x1

    mul-int v2, v2, v3

    sub-int/2addr v0, v2

    .line 222
    div-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Point;->x:I

    return-object v1
.end method

.method private getHorizontalGridSpacing(I)I
    .locals 2

    .line 234
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 247
    sget p1, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_cover_spacing_horizontal:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    .line 244
    :cond_0
    sget p1, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_cover_spacing_horizontal_4:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    .line 241
    :cond_1
    sget p1, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_cover_spacing_horizontal_3:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    .line 238
    :cond_2
    sget p1, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_cover_spacing_horizontal_2:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    return p1
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->yesButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->noButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/ku/ui/activity/KuInterstitialPageActivity;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 85
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->getInstance()Lcom/amazon/ku/KuContentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/ku/KuContentManager;->getCapturedBooks()Ljava/util/List;

    .line 86
    invoke-static {}, Lcom/amazon/ku/KuInterstitialPageController;->getInstance()Lcom/amazon/ku/KuInterstitialPageController;

    move-result-object p2

    .line 87
    sget p3, Lcom/amazon/kindle/ku/R$layout;->ku_expiry_offer:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    .line 89
    sget p3, Lcom/amazon/kindle/ku/R$id;->ku_offer_header:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->header:Landroid/widget/TextView;

    .line 90
    iget-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ku/R$id;->ku_offer_body:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->body:Landroid/widget/TextView;

    .line 91
    iget-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ku/R$id;->ku_legalese:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/ku/ui/view/LinkableTextView;

    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->legalese:Lcom/amazon/ku/ui/view/LinkableTextView;

    .line 92
    iget-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ku/R$id;->ku_positive_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->yesButton:Landroid/widget/Button;

    .line 93
    iget-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ku/R$id;->ku_negative_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->noButton:Landroid/widget/Button;

    .line 94
    iget-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ku/R$id;->ku_content_grid:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->gridView:Landroid/widget/GridView;

    .line 95
    iget-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ku/R$id;->ku_dialog_close_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 96
    new-instance p3, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;

    invoke-direct {p3}, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;-><init>()V

    iput-object p3, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->adapter:Lcom/amazon/ku/ui/KuExpiredBooksAdapter;

    .line 97
    iget-object v0, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object p3, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->yesButton:Landroid/widget/Button;

    new-instance v0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$2;-><init>(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;Lcom/amazon/ku/KuInterstitialPageController;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p3, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->noButton:Landroid/widget/Button;

    new-instance v0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$3;-><init>(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;Lcom/amazon/ku/KuInterstitialPageController;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance p3, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$4;

    invoke-direct {p3, p0, p2}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$4;-><init>(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;Lcom/amazon/ku/KuInterstitialPageController;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 118
    invoke-virtual {p0, p2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 119
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    instance-of p2, p2, Lcom/amazon/ku/ui/activity/KuInterstitialPageActivity;

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 57
    invoke-virtual {p0}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->refreshContentView()V

    .line 59
    iget-object v0, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ku/R$id;->ku_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 61
    new-instance v1, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment$1;-><init>(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshContentView()V
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/amazon/ku/KuInterstitialPageController;->getInstance()Lcom/amazon/ku/KuInterstitialPageController;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Lcom/amazon/ku/KuInterstitialPageController;->getTextAssets(Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 140
    sget-object v0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "Text assets not ready; skip refreshing"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_1
    invoke-static {}, Lcom/amazon/ku/util/KuConversionUtils;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->header:Landroid/widget/TextView;

    sget-object v4, Lcom/amazon/ku/data/KuInterstitialPageAsset;->HEADER:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    invoke-virtual {v4}, Lcom/amazon/ku/data/KuInterstitialPageAsset;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->body:Landroid/widget/TextView;

    sget-object v3, Lcom/amazon/ku/data/KuInterstitialPageAsset;->BODY:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    invoke-virtual {v3}, Lcom/amazon/ku/data/KuInterstitialPageAsset;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    sget-object v2, Lcom/amazon/ku/data/KuInterstitialPageAsset;->LEGAL:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    invoke-virtual {v2}, Lcom/amazon/ku/data/KuInterstitialPageAsset;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->legalese:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->legalese:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-virtual {v2}, Lcom/amazon/ku/ui/view/LinkableTextView;->onAfterSetText()V

    .line 150
    iget-object v2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->legalese:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->legalese:Lcom/amazon/ku/ui/view/LinkableTextView;

    const-string v3, ""

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->yesButton:Landroid/widget/Button;

    sget-object v3, Lcom/amazon/ku/data/KuInterstitialPageAsset;->YES_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    invoke-virtual {v3}, Lcom/amazon/ku/data/KuInterstitialPageAsset;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->noButton:Landroid/widget/Button;

    sget-object v3, Lcom/amazon/ku/data/KuInterstitialPageAsset;->NO_BUTTON:Lcom/amazon/ku/data/KuInterstitialPageAsset;

    invoke-virtual {v3}, Lcom/amazon/ku/data/KuInterstitialPageAsset;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0}, Lcom/amazon/ku/KuInterstitialPageController;->isQueuedForSignUp()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->setButtonsEnabled(Z)V

    .line 159
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->getInstance()Lcom/amazon/ku/KuContentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ku/KuContentManager;->getCapturedBooks()Ljava/util/List;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->adapter:Lcom/amazon/ku/ui/KuExpiredBooksAdapter;

    invoke-virtual {v2}, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->getBookCount()I

    move-result v2

    if-ge v2, v1, :cond_4

    .line 163
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ku/R$integer;->ku_expiry_grid_column_count:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v1, v2, :cond_3

    .line 166
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/ku/R$integer;->ku_expiry_grid_row_count:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    .line 168
    :goto_1
    invoke-direct {p0, v1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->computeCoverSize(I)Landroid/graphics/Point;

    move-result-object v4

    .line 169
    invoke-direct {p0, v1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->getHorizontalGridSpacing(I)I

    move-result v1

    .line 170
    iget v6, v4, Landroid/graphics/Point;->y:I

    mul-int v6, v6, v3

    sub-int/2addr v3, v5

    .line 171
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/amazon/kindle/ku/R$dimen;->ku_offer_cover_spacing_vertical:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int v3, v3, v5

    add-int/2addr v6, v3

    .line 172
    iget v3, v4, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v2

    add-int/lit8 v5, v2, -0x1

    mul-int v5, v5, v1

    add-int/2addr v3, v5

    .line 173
    iget-object v5, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    iget-object v5, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    iget-object v3, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 176
    iget-object v1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 177
    iget-object v1, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->adapter:Lcom/amazon/ku/ui/KuExpiredBooksAdapter;

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->setBooks(IILjava/util/List;)V

    .line 178
    sget-object v0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "Added books to the GridView"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
