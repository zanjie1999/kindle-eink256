.class public Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;
.super Lcom/amazon/kindle/krx/ui/InfoCardView;
.source "WordWiseInfoCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;
    }
.end annotation


# static fields
.field private static final AMAZON_EMBER_REGULAR_FONT_FILE_NAME:Ljava/lang/String; = "Amazon-Ember-Regular.ttf"


# instance fields
.field private colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private controller:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

.field private views:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/InfoCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->controller:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    .line 71
    sget-object p1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->controller:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    return-object p0
.end method

.method private addListeners()V
    .locals 7

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 290
    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    .line 303
    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->USE_THIS_MEANING_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->MORE_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SEE_MEANINGS_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_YES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_NO:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    .line 313
    aget-object v2, v1, v3

    .line 314
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 316
    new-instance v5, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v2, v6}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$1;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SPEAK:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$2;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    sget v0, Lcom/amazon/kindle/ww/R$id;->wordwise_card_content_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    .line 331
    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$3;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$3;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method private populateListView(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 388
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 389
    instance-of v1, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;

    if-eqz v1, :cond_0

    .line 390
    check-cast v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->loadElements(Landroid/os/Bundle;)V

    :cond_0
    const/4 p2, 0x0

    .line 392
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method private populateTextView(Landroid/widget/TextView;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "text"

    .line 363
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "html_text"

    .line 370
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 374
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 372
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing args[text] and args[html_text]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private refreshColors()V
    .locals 17

    move-object/from16 v0, p0

    .line 409
    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$4;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    iget-object v2, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 424
    sget v1, Lcom/amazon/kindle/ww/R$drawable;->bg_info_card_light:I

    .line 425
    sget v4, Lcom/amazon/kindle/ww/R$drawable;->bg_info_card_text_view_light:I

    .line 426
    sget v5, Lcom/amazon/kindle/ww/R$drawable;->infocard_audio_play_light:I

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/ww/R$color;->info_card_v2_title_text_color_white_mode:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/amazon/kindle/ww/R$color;->info_card_v2_content_text_color_white_mode:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 429
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/ww/R$color;->info_card_v2_button_text_color_white_mode:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/amazon/kindle/ww/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const v10, 0x1080012

    goto :goto_0

    .line 412
    :cond_0
    sget v1, Lcom/amazon/kindle/ww/R$drawable;->bg_info_card_dark:I

    .line 413
    sget v4, Lcom/amazon/kindle/ww/R$drawable;->bg_info_card_text_view_dark:I

    const v10, 0x1080014

    .line 415
    sget v5, Lcom/amazon/kindle/ww/R$drawable;->infocard_audio_play_dark:I

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/ww/R$color;->info_card_v2_dark_mode_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/amazon/kindle/ww/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    move v7, v6

    move v8, v7

    .line 434
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 435
    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v11, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x7

    new-array v6, v1, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    .line 437
    sget-object v11, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->POS_TYPE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v12, 0x0

    aput-object v11, v6, v12

    sget-object v11, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v11, v6, v3

    sget-object v11, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_DETAILS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v11, v6, v2

    sget-object v11, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SHORT_DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v13, 0x3

    aput-object v11, v6, v13

    sget-object v11, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SOURCE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v14, 0x4

    aput-object v11, v6, v14

    sget-object v11, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v15, 0x5

    aput-object v11, v6, v15

    sget-object v11, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LEMMA:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/16 v16, 0x6

    aput-object v11, v6, v16

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_1

    .line 447
    aget-object v15, v6, v11

    .line 448
    iget-object v14, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x5

    goto :goto_1

    :cond_1
    new-array v6, v13, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    .line 451
    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_QUESTION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v7, v6, v12

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_SEPARATOR:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v7, v6, v3

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->THANK_YOU:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v7, v6, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v13, :cond_2

    .line 457
    aget-object v11, v6, v7

    .line 458
    iget-object v14, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    new-array v6, v1, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    .line 461
    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v7, v6, v12

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->USE_THIS_MEANING_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v7, v6, v3

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->MORE_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v3, v6, v2

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v2, v6, v13

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SEE_MEANINGS_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v3, 0x4

    aput-object v2, v6, v3

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_YES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v3, 0x5

    aput-object v2, v6, v3

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_NO:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v2, v6, v16

    :goto_3
    if-ge v12, v1, :cond_3

    .line 471
    aget-object v2, v6, v12

    .line 472
    iget-object v3, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 475
    :cond_3
    sget v1, Lcom/amazon/kindle/ww/R$id;->wordwise_card_content:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 478
    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE_DIVIDER:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 482
    sget v1, Lcom/amazon/kindle/ww/R$id;->wordwise_speak:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 485
    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 487
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;

    .line 489
    iget-object v2, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardListAdapter;->setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    return-void
.end method

.method private setTypeface()V
    .locals 16

    move-object/from16 v0, p0

    .line 228
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "sans-serif"

    .line 229
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "Amazon-Ember-Regular.ttf"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    .line 234
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    const/16 v5, 0x9

    new-array v6, v5, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    .line 236
    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v7, v6, v2

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->POS_TYPE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v7, v6, v3

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_DETAILS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_QUESTION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v10, 0x4

    aput-object v7, v6, v10

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_SEPARATOR:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v11, 0x5

    aput-object v7, v6, v11

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_YES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v12, 0x6

    aput-object v7, v6, v12

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_NO:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/4 v13, 0x7

    aput-object v7, v6, v13

    sget-object v7, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->THANK_YOU:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/16 v14, 0x8

    aput-object v7, v6, v14

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    .line 248
    aget-object v15, v6, v7

    .line 249
    iget-object v14, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0x8

    goto :goto_1

    :cond_1
    new-array v1, v5, [Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    .line 252
    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LEMMA:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v6, v1, v2

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v6, v1, v3

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SHORT_DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v3, v1, v8

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SOURCE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v3, v1, v9

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v3, v1, v10

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v3, v1, v11

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->USE_THIS_MEANING_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v3, v1, v12

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->MORE_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    aput-object v3, v1, v13

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SEE_MEANINGS_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    const/16 v6, 0x8

    aput-object v3, v1, v6

    :goto_2
    if-ge v2, v5, :cond_2

    .line 264
    aget-object v3, v1, v2

    .line 265
    iget-object v6, v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private showChildren(Landroid/view/ViewGroup;)V
    .locals 4

    .line 207
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 209
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getNameForMetrics()Ljava/lang/String;
    .locals 1

    const-string v0, "WordwiseInfoCard"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDefinition()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->controller:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->hasDefinition()Z

    move-result v0

    return v0
.end method

.method protected hideAll()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected hideView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    .line 80
    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_title:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LEMMA:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_lemma:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->POS_TYPE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_pos_type:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_other_meanings:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SHORT_DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_short_definition:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_sub_title:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_DETAILS:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_sub_details:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SOURCE:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_source:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->DEFINITION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_definition:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_list:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_helpful:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_QUESTION:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_helpful_question:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_YES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_helpful_yes:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_NO:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_helpful_no:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_SEPARATOR:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_helpful_separator:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->THANKS_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_thank_you:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->THANK_YOU:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_thank_you_text:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_back:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->USE_THIS_MEANING_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_use_this_meaning:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->MORE_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_more:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SEE_MEANINGS_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_see_meanings:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SPEAK:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_speak:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SUB_TITLE_DIVIDER:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_subtitle_divider:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->OTHER_MEANINGS_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_other_meanings_text:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->USE_THIS_MEANING_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_use_this_meaning_text:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->SEE_MEANINGS_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_see_meanings_text:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->BACK_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_back_text:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->MORE_TEXT:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_card_more_text:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->setTypeface()V

    .line 111
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->addListeners()V

    .line 112
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->refreshColors()V

    .line 113
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hideAll()V

    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 124
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->refreshColors()V

    return-void
.end method

.method public setSelectionModel(Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->controller:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->setSelectionModel(Lcom/amazon/kindle/krx/content/IContentSelection;)V

    return-void
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->controller:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->setSharedPreferences(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method protected setupJapaneseHelpfulViews()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_YES:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->HELPFUL_NO:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 221
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_info_cards_v2_feedback_helpful_jp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_info_cards_v2_feedback_not_helpful_jp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    return-void
.end method

.method protected showView(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 190
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 191
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->populateTextView(Landroid/widget/TextView;Landroid/os/Bundle;)V

    goto :goto_0

    .line 192
    :cond_1
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 193
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->populateListView(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 196
    :cond_2
    :goto_0
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    .line 197
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->showChildren(Landroid/view/ViewGroup;)V

    :cond_3
    return-void
.end method

.method public updateSelection()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->controller:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->updateSelection()V

    return-void
.end method
