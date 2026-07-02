.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "AaSettingSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingSeekBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingSeekBar.kt\ncom/amazon/kindle/viewoptions/ui/AaSettingSeekBar\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n1#2:306\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private drawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private leftView:Landroid/view/View;

.field private rightView:Landroid/view/View;

.field public seekBarView:Landroid/widget/SeekBar;

.field private sliderBarCollection:Landroid/widget/LinearLayout;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attrs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-class v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils.getTag(AaSettingSeekBar::class.java)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p0

    iput-object v2, v15, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->TAG:Ljava/lang/String;

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 44
    sget-object v3, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar:[I

    const/4 v4, 0x0

    .line 42
    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    const-string v1, "context.theme.obtainStyl\u2026ar,\n                0, 0)"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    sget v1, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_seekBarId:I

    invoke-virtual {v14, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 49
    sget v2, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_maxVal:I

    const/16 v3, 0xa

    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 50
    sget v2, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_initVal:I

    invoke-virtual {v14, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 51
    sget v2, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_leftView:I

    invoke-virtual {v14, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 52
    sget v3, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_rightView:I

    invoke-virtual {v14, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 53
    sget v5, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_leftViewWidth:I

    const/4 v8, 0x0

    invoke-virtual {v14, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 54
    sget v9, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_rightViewWidth:I

    invoke-virtual {v14, v9, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 55
    sget v9, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_leftViewId:I

    invoke-virtual {v14, v9, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 56
    sget v10, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_rightViewId:I

    invoke-virtual {v14, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 57
    sget v11, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_tickMarksEnabled:I

    invoke-virtual {v14, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 58
    sget v12, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_showTitleEnabled:I

    invoke-virtual {v14, v12, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 59
    sget v13, Lcom/amazon/kindle/krl/R$styleable;->AaSettingSeekBar_title:I

    invoke-virtual {v14, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 61
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    float-to-int v5, v5

    move-object/from16 p2, v14

    const/4 v14, -0x1

    :try_start_1
    invoke-direct {v4, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v8, v8

    invoke-direct {v5, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v8, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 68
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 71
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 75
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 78
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-direct {v2, v9, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 79
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x15

    .line 81
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 82
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {v2, v9, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 85
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x13

    .line 87
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 88
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v17, 0x200

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v5

    move-object v5, v8

    move v8, v11

    move v9, v12

    move-object v11, v14

    move-object/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v16, p2

    move-object/from16 v14, v18

    :try_start_2
    invoke-static/range {v1 .. v14}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->init$default(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, p2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v16, v14

    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "IIZZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 28
    const-class v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(AaSettingSeekBar::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->TAG:Ljava/lang/String;

    .line 38
    invoke-direct/range {p0 .. p11}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->init(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 37
    invoke-direct/range {v1 .. v12}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isSeekBarOnScreen(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->isSeekBarOnScreen()Z

    move-result p0

    return p0
.end method

.method private final init(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "IIZZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v5, p7

    move-object/from16 v12, p9

    .line 99
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v0, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_font_size_margin_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v15, 0x0

    .line 101
    invoke-virtual {v0, v15, v1, v15, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    .line 104
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x2

    .line 105
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 107
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 108
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 109
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2SeekBarColor:I

    invoke-virtual {v3, v4, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2SeekBarTick:I

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2SeekBar:I

    invoke-virtual {v3, v4, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 115
    new-instance v3, Landroid/widget/SeekBar;

    sget v4, Lcom/amazon/kindle/krl/R$style;->AaMenuV2SeekBar:I

    const/4 v14, 0x0

    invoke-direct {v3, v8, v14, v15, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v1, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    const-string/jumbo v16, "seekBarView"

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    if-eqz v5, :cond_1

    .line 119
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 122
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->aa_menu_v2_seekbar_weight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 123
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010181

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 127
    :cond_2
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v15, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 131
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v15, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_seekbar_tap_area_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 133
    iget-object v2, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v2, :cond_1e

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    const/16 v0, 0x11

    .line 135
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 136
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1c

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 138
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1b

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 140
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    iput-object v9, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->title:Ljava/lang/String;

    .line 142
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_18

    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$1;

    invoke-direct {v1, v5}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz p11, :cond_4

    .line 151
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Number;->intValue()I

    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setId(I)V

    goto :goto_1

    :cond_3
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 153
    :cond_4
    :goto_1
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_17

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    if-eqz v12, :cond_6

    .line 155
    new-instance v3, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p10

    move-object v13, v3

    move-object v3, v4

    move-object v15, v4

    move-object/from16 v4, p9

    move/from16 v5, p7

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;Ljava/lang/Integer;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)V

    .line 192
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_2

    :cond_5
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    :cond_6
    move-object v15, v4

    .line 195
    :goto_2
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$4;

    move-object/from16 v1, p10

    invoke-direct {v0, v15, v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Integer;)V

    iput-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->drawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 203
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->drawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v1, :cond_15

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "sliderBarCollection"

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 211
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    if-eqz v10, :cond_d

    if-eqz v11, :cond_d

    .line 215
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, v8}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v4, Landroid/widget/Space;

    invoke-direct {v4, v8}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v13, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_seekbar_spacing:I

    invoke-virtual {v6, v13, v5, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 219
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v13

    const/4 v2, -0x1

    const/4 v15, 0x0

    invoke-direct {v6, v15, v2, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-direct {v6, v15, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$5;

    invoke-direct {v2, v7, v9, v12}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$5;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;

    invoke-direct {v2, v7, v9, v12}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_accessibility_slider_decrease_button_description:I

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "context.getString(R.stri\u2026rease_button_description)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v6, v12

    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "java.lang.String.format(this, *args)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget v13, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_accessibility_slider_increase_button_description:I

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v9, v5, v12

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v10, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v11, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v2, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    iget-object v2, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iput-object v10, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->leftView:Landroid/view/View;

    .line 251
    iput-object v11, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->rightView:Landroid/view/View;

    goto :goto_3

    .line 249
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 248
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 247
    :cond_9
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 246
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 245
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 253
    :cond_d
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    iget-object v2, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v2, :cond_10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    :goto_3
    iget-object v0, v7, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->sliderBarCollection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p8, :cond_e

    .line 257
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 258
    sget v1, Lcom/amazon/kindle/krl/R$style;->AaMenuV2SettingSubtitle:I

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 259
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 263
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    return-void

    .line 255
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 253
    :cond_10
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 211
    :cond_12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 210
    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 209
    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    :cond_15
    const-string v0, "drawListener"

    .line 203
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    :cond_16
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 153
    :cond_17
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 142
    :cond_18
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 140
    :cond_19
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 139
    :cond_1a
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 138
    :cond_1b
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 137
    :cond_1c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 136
    :cond_1d
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 133
    :cond_1e
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14

    .line 117
    :cond_1f
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v14
.end method

.method static synthetic init$default(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    .line 98
    invoke-direct/range {v1 .. v12}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->init(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private final isSeekBarOnScreen()Z
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    const-string/jumbo v2, "seekBarView"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 299
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v4, "resources"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 300
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v3, v3, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 301
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 302
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 303
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 302
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getSeekBarView()Landroid/widget/SeekBar;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "seekBarView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 281
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 282
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    const-string/jumbo v1, "seekBarView"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->drawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 283
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "drawListener"

    .line 282
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 4

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getInitValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_5

    .line 288
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    const-string/jumbo v2, "seekBarView"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    const-string/jumbo v3, "theme_change"

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    return-void
.end method

.method public final setLeftViewListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->leftView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setRightViewListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->rightView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setSeekBarView(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->seekBarView:Landroid/widget/SeekBar;

    return-void
.end method
