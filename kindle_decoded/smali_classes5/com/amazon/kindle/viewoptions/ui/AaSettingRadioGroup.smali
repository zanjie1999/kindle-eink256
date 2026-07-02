.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "AaSettingRadioGroup.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private checkedTextView:Landroid/widget/CheckedTextView;

.field private radioGroupContainer:Landroid/widget/HorizontalScrollView;

.field private radioGroupView:Landroid/widget/RadioGroup;

.field private subTitleView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I[I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "optionNames"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "optionIds"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-string/jumbo v2, "radioGroupView"

    if-ge v0, p2, :cond_3

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v4, :cond_2

    invoke-virtual {v3, p4, v4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Landroid/widget/RadioButton;

    .line 44
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 45
    aget v4, p8, v0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 46
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.RadioButton"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 51
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1, p7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "radioGroupView.getChildAt(currSelectedIndex)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 53
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$1;

    invoke-direct {p2, p6}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[I[I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I[I)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    move-object/from16 v4, p6

    move-object/from16 v0, p7

    move/from16 v1, p9

    move-object/from16 v2, p10

    const-string v7, "context"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "title"

    move-object/from16 v8, p2

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "subtitle"

    move-object/from16 v9, p3

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "vectorsChecked"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "vectorsUnchecked"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "optionNames"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "changeHandler"

    move-object/from16 v10, p8

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "optionIds"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct/range {p0 .. p3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v11, 0x0

    const-string/jumbo v12, "radioGroupView"

    if-ge v9, v7, :cond_4

    .line 71
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 72
    iget-object v14, v6, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v14, :cond_3

    move/from16 v15, p4

    invoke-virtual {v13, v15, v14, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_2

    check-cast v13, Landroid/widget/RadioButton;

    if-eq v9, v1, :cond_0

    .line 74
    aget v14, v4, v9

    invoke-static {v3, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 76
    :cond_0
    aget v14, v5, v9

    invoke-static {v3, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :goto_1
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    aget v14, v2, v9

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setId(I)V

    .line 80
    iget-object v14, v6, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v14, :cond_1

    invoke-virtual {v14, v13}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.RadioButton"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 83
    :cond_4
    iget-object v0, v6, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v8}, Landroid/widget/RadioGroup;->setOrientation(I)V

    if-ltz v1, :cond_8

    .line 86
    iget-object v0, v6, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 87
    iget-object v0, v6, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "radioGroupView.getChildAt(currSelectedIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    :cond_5
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_6
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 86
    :cond_7
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 90
    :cond_8
    :goto_2
    iget-object v0, v6, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_a

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v7, v6, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v7, :cond_9

    new-instance v8, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$2;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;Lkotlin/jvm/functions/Function1;Landroid/content/Context;[I[I)V

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :cond_9
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 90
    :cond_a
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 83
    :cond_b
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[I[I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I[I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vectorsChecked"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vectorsUnchecked"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "optionNames"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "optionIds"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxText"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxChangeHandler"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct/range {p0 .. p10}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    .line 124
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->checkedTextView:Landroid/widget/CheckedTextView;

    const/4 p2, 0x0

    const-string p3, "checkedTextView"

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->checkedTextView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p13}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 126
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->checkedTextView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p11}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->checkedTextView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$3;

    invoke-direct {p2, p12}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 126
    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 124
    :cond_3
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic access$getRadioGroupView$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;)Landroid/widget/RadioGroup;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "radioGroupView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$scrollToButton(Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;Landroid/widget/RadioButton;IZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->scrollToButton(Landroid/widget/RadioButton;IZ)V

    return-void
.end method

.method private final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_vertical_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 138
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_horizontal_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 139
    invoke-virtual {p0, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 141
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 142
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_radio_group_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026enu_v2_radio_group_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->titleView:Landroid/widget/TextView;

    const-string/jumbo v1, "titleView"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget p2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_radio_group_subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "content.findViewById(R.i\u2026_v2_radio_group_subtitle)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->subTitleView:Landroid/widget/TextView;

    const-string/jumbo v0, "subTitleView"

    if-eqz p2, :cond_4

    .line 146
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, ""

    .line 148
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 149
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->subTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->titleView:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/krl/R$color;->aa_menu_v2_setting_subtitle_text_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :goto_0
    sget p2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_radio_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "content.findViewById(R.id.aa_menu_v2_radio_group)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz p2, :cond_2

    .line 158
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setId(I)V

    .line 160
    sget p2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_radio_group_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "content.findViewById(R.i\u2026v2_radio_group_container)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/HorizontalScrollView;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupContainer:Landroid/widget/HorizontalScrollView;

    .line 162
    sget p2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_radio_group_checkbox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "content.findViewById(R.i\u2026_v2_radio_group_checkbox)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->checkedTextView:Landroid/widget/CheckedTextView;

    return-void

    :cond_2
    const-string/jumbo p1, "radioGroupView"

    .line 158
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final scrollToButton(Landroid/widget/RadioButton;IZ)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    const-string/jumbo v1, "radioGroupView"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupContainer:Landroid/widget/HorizontalScrollView;

    const-string/jumbo v3, "radioGroupContainer"

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    add-int/2addr v1, v4

    mul-int v1, v1, p2

    .line 184
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 185
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupContainer:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 187
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupContainer:Landroid/widget/HorizontalScrollView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1, p1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupContainer:Landroid/widget/HorizontalScrollView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v1, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_1
    return-void

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 166
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 168
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    const/4 p2, 0x0

    const-string/jumbo p3, "radioGroupView"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p4, -0x1

    if-eq p1, p4, :cond_3

    .line 170
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p4, "radioGroupView.findViewB\u2026iew.checkedRadioButtonId)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RadioButton;

    .line 171
    iget-object p4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->scrollToButton(Landroid/widget/RadioButton;IZ)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 170
    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void

    .line 168
    :cond_4
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 10

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    const/4 v2, 0x1

    const-string/jumbo v3, "radioGroupView"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    if-nez v0, :cond_0

    move-object p1, v4

    :cond_0
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getCurrSelectedIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v4

    :goto_0
    move-object v0, v4

    goto/16 :goto_6

    .line 201
    :cond_2
    instance-of v1, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    if-eqz v1, :cond_d

    .line 202
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    if-nez v1, :cond_3

    move-object v0, v4

    :cond_3
    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->getCurrSelectedIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 205
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    .line 206
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    const-string v5, "null cannot be cast to non-null type android.widget.RadioButton"

    const/4 v6, 0x0

    if-ne p1, v1, :cond_8

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$color;->aa_menu_v2_static_blue_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 208
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v6, v1, :cond_c

    .line 209
    iget-object v7, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v7, :cond_6

    invoke-virtual {v7, v6}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Landroid/widget/RadioButton;

    .line 210
    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 211
    invoke-virtual {v7, p1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 209
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_8
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-ne p1, v1, :cond_c

    .line 214
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$color;->aa_menu_v2_setting_subtitle_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 215
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v1, :cond_c

    .line 216
    iget-object v8, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v8, :cond_a

    invoke-virtual {v8, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_9

    check-cast v8, Landroid/widget/RadioButton;

    .line 217
    invoke-virtual {v8, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 218
    invoke-virtual {v8, p1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 216
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 215
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    move-object p1, v0

    goto/16 :goto_0

    .line 222
    :cond_d
    instance-of v0, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    if-eqz v0, :cond_11

    .line 223
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    if-nez v0, :cond_e

    move-object p1, v4

    :cond_e
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    if-eqz p1, :cond_f

    .line 224
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getCurrSelectedIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_f
    move-object v0, v4

    :goto_4
    if-eqz p1, :cond_10

    .line 225
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getCheckBoxInitialValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_5

    :cond_10
    move-object p1, v4

    :goto_5
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_6

    :cond_11
    move-object p1, v4

    move-object v0, p1

    :goto_6
    if-eqz p1, :cond_15

    .line 231
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    if-eq v1, v5, :cond_15

    .line 233
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->radioGroupView:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_12

    const-string/jumbo v3, "theme_change"

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 234
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_7

    .line 233
    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 232
    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_15
    :goto_7
    if-eqz v0, :cond_17

    .line 239
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;->checkedTextView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_16

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_8

    :cond_16
    const-string p1, "checkedTextView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_17
    :goto_8
    return-void
.end method
