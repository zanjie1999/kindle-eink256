.class public Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;
.super Lcom/amazon/kindle/setting/item/template/PrimaryItemUIBuilder;
.source "MorePrimaryItemUIBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/setting/item/template/PrimaryItemUIBuilder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESOURCE_TYPE_ATTR:Ljava/lang/String; = "attr"

.field private static final RESOURCE_TYPE_DRAWABLE:Ljava/lang/String; = "drawable"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kindle/setting/item/template/PrimaryItemUIBuilder;-><init>()V

    return-void
.end method

.method private final getDrawableResIdByAttrId(Landroid/content/Context;I)I
    .locals 2

    .line 118
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 120
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public static synthetic setupView$default(Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;Landroid/content/Context;Lcom/amazon/kindle/setting/item/template/PrimaryItem;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;ILjava/lang/Object;)V
    .locals 9

    if-nez p9, :cond_1

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 61
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;->setupView(Landroid/content/Context;Lcom/amazon/kindle/setting/item/template/PrimaryItem;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void

    .line 0
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: setupView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 28
    sget v1, Lcom/amazon/kcp/more/R$layout;->primary_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    move-object v5, p2

    check-cast v5, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 32
    sget p2, Lcom/amazon/kcp/more/R$id;->item_icon:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/widget/ImageView;

    .line 33
    sget p2, Lcom/amazon/kcp/more/R$id;->item_title:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/widget/TextView;

    .line 34
    sget p2, Lcom/amazon/kcp/more/R$id;->item_subtitle:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Landroid/widget/TextView;

    .line 35
    sget p2, Lcom/amazon/kcp/more/R$id;->secondary_icon:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Landroid/widget/ImageView;

    const-string p2, "view"

    .line 37
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "icon"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "title"

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "subTitle"

    invoke-static {v9, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p1

    move-object v6, v0

    invoke-virtual/range {v3 .. v10}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;->setupView(Landroid/content/Context;Lcom/amazon/kindle/setting/item/template/PrimaryItem;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;->build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final setupView(Landroid/content/Context;Lcom/amazon/kindle/setting/item/template/PrimaryItem;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTitleView"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    const-string v2, "drawable"

    const v3, 0x2dd9f1

    const v4, -0x31437f62

    const/4 v5, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v4, :cond_2

    if-eq v6, v3, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getIconResId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;->getDrawableResIdByAttrId(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getIconResId()I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    if-eqz p7, :cond_9

    .line 73
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getSecondaryIconResId()I

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getSecondaryIconResId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v4, :cond_7

    if-eq v6, v3, :cond_6

    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getSecondaryIconResId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;->getDrawableResIdByAttrId(Landroid/content/Context;I)I

    move-result v0

    goto :goto_3

    .line 76
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getSecondaryIconResId()I

    move-result v0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 81
    invoke-virtual {p7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {p7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    :cond_9
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getTitle()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getContentDescription()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_a

    .line 88
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getContentDescription()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    :cond_a
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getSubTitle()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_b

    .line 92
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getSubTitle()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_b
    const/16 p7, 0x8

    .line 95
    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_4
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getOnClickHandler()Lcom/amazon/kindle/setting/item/template/OnClickHandler;

    move-result-object p7

    if-eqz p7, :cond_c

    .line 100
    new-instance v0, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$setupView$1;

    invoke-direct {v0, p7, p1}, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$setupView$1;-><init>(Lcom/amazon/kindle/setting/item/template/OnClickHandler;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_c
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->isUIDisabled()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p7, Lcom/amazon/kcp/more/R$color;->gray:I

    invoke-virtual {p2, p7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/amazon/kcp/more/R$color;->gray:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kcp/more/R$color;->gray:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method
