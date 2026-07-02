.class Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;
.super Landroid/widget/PopupWindow;
.source "StandaloneShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/StandaloneShareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharePopupWindow"
.end annotation


# instance fields
.field mButtonCancel:Landroid/widget/Button;

.field mSocialCenter:Landroid/widget/LinearLayout;

.field mSocialContainer:Landroid/widget/LinearLayout;

.field mSocialView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/amazon/kcp/reader/IShareHelper$ShareType;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 555
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-string v3, "layout_inflater"

    .line 557
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0c03a2

    const/4 v5, 0x0

    .line 558
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialView:Landroid/widget/RelativeLayout;

    .line 560
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v3, -0x1

    .line 561
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 562
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v3, 0x1

    .line 563
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const v4, 0x7f110033

    .line 564
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 566
    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->useDarkStyle(Landroid/content/Context;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Z

    move-result v4

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 569
    iget-object v6, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialView:Landroid/widget/RelativeLayout;

    const v7, 0x7f090b23

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialCenter:Landroid/widget/LinearLayout;

    .line 570
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 572
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 573
    iget-object v11, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialCenter:Landroid/widget/LinearLayout;

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    if-nez v9, :cond_0

    goto :goto_1

    .line 577
    :cond_0
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 578
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon_"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v15, "drawable"

    invoke-virtual {v14, v3, v15, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "string"

    invoke-virtual {v14, v10, v15, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 583
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    invoke-virtual {v1, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_1

    .line 586
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    :cond_1
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v3, p3

    .line 589
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v9, v12

    const/4 v3, 0x1

    goto :goto_0

    .line 592
    :cond_2
    :goto_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/amazon/kcp/reader/StandaloneShareHelper;->background:I

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 593
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    iget-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090b21

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mButtonCancel:Landroid/widget/Button;

    .line 596
    new-instance v3, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$1;

    invoke-direct {v3, v0, v2}, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$1;-><init>(Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$2;

    invoke-direct {v3, v0, v2}, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$2;-><init>(Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 619
    iget-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090b24

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    .line 621
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/amazon/kcp/reader/StandaloneShareHelper;->darkBackground:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    iget-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mButtonCancel:Landroid/widget/Button;

    const v2, 0x7f080d1c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 623
    iget-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialContainer:Landroid/widget/LinearLayout;

    sget v2, Lcom/amazon/kcp/reader/StandaloneShareHelper;->darkColor:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 624
    iget-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 625
    iget-object v1, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090b27

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 626
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method
