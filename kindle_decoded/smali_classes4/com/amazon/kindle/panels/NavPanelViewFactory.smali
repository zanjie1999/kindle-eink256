.class public Lcom/amazon/kindle/panels/NavPanelViewFactory;
.super Ljava/lang/Object;
.source "NavPanelViewFactory.java"


# direct methods
.method private static getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    const-string v0, "layout_inflater"

    .line 355
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private static inflateNavPanelItem(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZI)Landroid/view/View;
    .locals 2

    .line 310
    invoke-static {p0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 311
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setLayoutDirection(I)V

    const/4 p2, 0x1

    if-ne p7, p2, :cond_0

    const/4 p2, 0x4

    .line 315
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 317
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextDirection(I)V

    :goto_0
    if-eqz p6, :cond_1

    .line 321
    invoke-static {p1}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setFont(Landroid/widget/TextView;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 325
    invoke-static {p0, p1, p5}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setStartPadding(Landroid/content/Context;Landroid/view/View;I)V

    .line 328
    :cond_2
    invoke-virtual {p1, v1, v1, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p4, :cond_3

    .line 331
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->nav_panel_item_height:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 p2, -0x1

    .line 335
    invoke-static {p1, p2, p0}, Lcom/amazon/android/util/UIUtils;->setViewSize(Landroid/view/View;II)V

    .line 337
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 338
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p0

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p0, p2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    return-object p1
.end method

.method public static inflateReaderNavPanelItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZIZ)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 48
    invoke-static/range {v0 .. v9}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZIZLjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflateReaderNavPanelItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZIZLjava/lang/String;)Landroid/view/View;
    .locals 9

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 67
    sget v2, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_item_with_page_label:I

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItemWithPageLabel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;IZI)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 69
    sget v2, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_item_with_secondary_text:I

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v8}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItemWithSecondaryText(Landroid/content/Context;ILjava/lang/String;Landroid/view/View$OnClickListener;IZILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p8, :cond_2

    .line 71
    sget v0, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_current_episode_item:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_item:I

    :goto_0
    move v1, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 72
    invoke-static/range {v0 .. v7}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateNavPanelItem(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZI)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static inflateReaderNavPanelItemWithPageLabel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;IZI)Landroid/view/View;
    .locals 2

    .line 94
    invoke-static {p0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 95
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_item_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_item_page_label:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p1, p7}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    if-eqz p4, :cond_0

    .line 100
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 p4, 0x1

    if-ne p7, p4, :cond_2

    const/4 p4, 0x4

    .line 107
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_2
    const/4 p4, 0x3

    .line 109
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 112
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p6, :cond_3

    .line 115
    invoke-static {v0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setFont(Landroid/widget/TextView;)V

    :cond_3
    if-eqz p5, :cond_4

    .line 119
    invoke-static {p0, v0, p5}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setStartPadding(Landroid/content/Context;Landroid/view/View;I)V

    .line 122
    :cond_4
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 125
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p0

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p0, p2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p0

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p0, p2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_5
    return-object p1
.end method

.method private static inflateReaderNavPanelItemWithSecondaryText(Landroid/content/Context;ILjava/lang/String;Landroid/view/View$OnClickListener;IZILjava/lang/String;)Landroid/view/View;
    .locals 2

    .line 148
    invoke-static {p0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 149
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_item_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_item_secondary_text:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 152
    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    if-eqz p3, :cond_0

    .line 155
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 p3, 0x1

    if-ne p6, p3, :cond_2

    const/4 p3, 0x4

    .line 163
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 164
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x3

    .line 166
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 167
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 170
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_3

    .line 174
    invoke-static {v0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setFont(Landroid/widget/TextView;)V

    .line 175
    invoke-static {v1}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setFont(Landroid/widget/TextView;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 179
    invoke-static {p0, v0, p4}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setStartPadding(Landroid/content/Context;Landroid/view/View;I)V

    .line 180
    invoke-static {p0, v1, p4}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setStartPadding(Landroid/content/Context;Landroid/view/View;I)V

    .line 183
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->nav_panel_item_height:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 p2, -0x1

    .line 184
    invoke-static {p1, p2, p0}, Lcom/amazon/android/util/UIUtils;->setViewSize(Landroid/view/View;II)V

    .line 186
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 187
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p0

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p0, p2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p0

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p0, p2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_5
    return-object p1
.end method

.method public static inflateReaderNavPanelItemWithSplitPattern(Landroid/content/Context;ILjava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;IIZI)Landroid/view/View;
    .locals 3

    .line 244
    invoke-static {p0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 245
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_split_item_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_split_item_icon:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 248
    invoke-virtual {p1, p9}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-ne p9, v2, :cond_0

    const/4 p9, 0x4

    .line 252
    invoke-virtual {v0, p9}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_0
    const/4 p9, 0x3

    .line 254
    invoke-virtual {v0, p9}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 257
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz p8, :cond_1

    .line 261
    invoke-static {v0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setFont(Landroid/widget/TextView;)V

    :cond_1
    if-eqz p7, :cond_2

    .line 265
    invoke-static {p0, v0, p7}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->setStartPadding(Landroid/content/Context;Landroid/view/View;I)V

    .line 267
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 268
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p2

    sget-object p7, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2, p7}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    if-eqz v1, :cond_6

    .line 273
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_toc_down_expand:I

    invoke-static {p0, p2}, Lcom/amazon/android/widget/CommandBarUtils;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_4

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_1

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 275
    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 276
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p3, :cond_5

    sget p2, Lcom/amazon/kindle/krl/R$string;->toc_item_collapse:I

    goto :goto_2

    :cond_5
    sget p2, Lcom/amazon/kindle/krl/R$string;->toc_item_expand:I

    :goto_2
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_6

    .line 281
    invoke-virtual {v1, p5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p4, :cond_7

    .line 286
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-object p1
.end method

.method public static inflateReaderNavPanelItemWithThumbnail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZ)Landroid/view/View;
    .locals 3

    .line 199
    invoke-static {p0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 200
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_item_with_thumbnail_title:I

    .line 201
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_item_with_thumbnail_description:I

    .line 203
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 204
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_item_with_thumbnail_thumbnail:I

    .line 205
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 207
    invoke-virtual {p1, p7}, Landroid/widget/LinearLayout;->setActivated(Z)V

    if-eqz v0, :cond_1

    if-eqz p7, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p7, Lcom/amazon/kindle/krl/R$color;->lava_toc_item_selected:I

    invoke-virtual {p0, p7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v2, :cond_4

    if-eqz p4, :cond_3

    .line 221
    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/16 p0, 0x8

    .line 223
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :cond_4
    :goto_0
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static inflateReaderNavPanelSectionLabel(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 1

    .line 232
    invoke-static {p0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 233
    sget p1, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_section_label_text:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public static inflateReaderNavPanelSubhead(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 83
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kindle/krl/R$layout;->newtron_phase1_reader_nav_panel_subhead:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_subhead:I

    .line 85
    :goto_0
    invoke-static {p0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p1

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p1, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1
    return-object p0
.end method

.method private static setFont(Landroid/widget/TextView;)V
    .locals 1

    .line 363
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 364
    invoke-static {p0, v0}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    return-void
.end method

.method private static setStartPadding(Landroid/content/Context;Landroid/view/View;I)V
    .locals 5

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->toc_indentation_padding:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int p0, p0, p2

    add-int/2addr v0, p0

    .line 351
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
