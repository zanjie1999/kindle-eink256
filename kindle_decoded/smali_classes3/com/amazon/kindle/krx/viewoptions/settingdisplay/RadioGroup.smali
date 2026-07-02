.class public final Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;
.super Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
.source "AaSettingDisplay.kt"


# instance fields
.field private final buttonDrawablesChecked:[I

.field private final buttonDrawablesUnchecked:[I

.field private final changeHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final currSelectedIndex:I

.field private final ids:[I

.field private final optionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final radioButtonLayoutId:I

.field private final subTitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonDrawablesChecked"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonDrawablesUnchecked"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionNames"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->subTitle:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->radioButtonLayoutId:I

    iput-object p4, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesChecked:[I

    iput-object p5, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesUnchecked:[I

    iput-object p6, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->optionNames:Ljava/util/List;

    iput-object p7, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->currSelectedIndex:I

    iput-object p9, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->ids:[I

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[IILjava/lang/Object;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->subTitle:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->radioButtonLayoutId:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesChecked:[I

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesUnchecked:[I

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->optionNames:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->currSelectedIndex:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->ids:[I

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->copy(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->radioButtonLayoutId:I

    return v0
.end method

.method public final component4()[I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesChecked:[I

    return-object v0
.end method

.method public final component5()[I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesUnchecked:[I

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->optionNames:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->currSelectedIndex:I

    return v0
.end method

.method public final component9()[I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->ids:[I

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;I[I)",
            "Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;"
        }
    .end annotation

    const-string v0, "title"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTitle"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonDrawablesChecked"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonDrawablesUnchecked"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionNames"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    move-object v1, v0

    move v4, p3

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->subTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->subTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->radioButtonLayoutId:I

    iget v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->radioButtonLayoutId:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesChecked:[I

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesChecked:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesUnchecked:[I

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesUnchecked:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->optionNames:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->optionNames:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->currSelectedIndex:I

    iget v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->currSelectedIndex:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->ids:[I

    iget-object p1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->ids:[I

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getButtonDrawablesChecked()[I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesChecked:[I

    return-object v0
.end method

.method public final getButtonDrawablesUnchecked()[I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesUnchecked:[I

    return-object v0
.end method

.method public final getChangeHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCurrSelectedIndex()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->currSelectedIndex:I

    return v0
.end method

.method public final getIds()[I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->ids:[I

    return-object v0
.end method

.method public final getOptionNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->optionNames:Ljava/util/List;

    return-object v0
.end method

.method public final getRadioButtonLayoutId()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->radioButtonLayoutId:I

    return v0
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->subTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->radioButtonLayoutId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesChecked:[I

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesUnchecked:[I

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->optionNames:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->currSelectedIndex:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->ids:[I

    if-eqz v2, :cond_6

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioGroup(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", radioButtonLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->radioButtonLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonDrawablesChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesChecked:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonDrawablesUnchecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->buttonDrawablesUnchecked:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optionNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->optionNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currSelectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->currSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->ids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
