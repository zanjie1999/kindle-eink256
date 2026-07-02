.class public final Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;
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

.field private final checkBoxHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final checkBoxInitialValue:Z

.field private final checkBoxText:Ljava/lang/String;

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

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonDrawablesChecked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonDrawablesUnchecked"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionNames"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxText"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxHandler"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->title:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->radioButtonLayoutId:I

    iput-object p3, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesChecked:[I

    iput-object p4, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesUnchecked:[I

    iput-object p5, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->optionNames:Ljava/util/List;

    iput-object p6, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    iput p7, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->currSelectedIndex:I

    iput-object p8, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->ids:[I

    iput-object p9, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxText:Ljava/lang/String;

    iput-object p10, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxHandler:Lkotlin/jvm/functions/Function1;

    iput-boolean p11, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxInitialValue:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->radioButtonLayoutId:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesChecked:[I

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesUnchecked:[I

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->optionNames:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->currSelectedIndex:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->ids:[I

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxText:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxHandler:Lkotlin/jvm/functions/Function1;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxInitialValue:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p11

    :goto_a
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->copy(Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;Z)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxInitialValue:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->radioButtonLayoutId:I

    return v0
.end method

.method public final component3()[I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesChecked:[I

    return-object v0
.end method

.method public final component4()[I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesUnchecked:[I

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->optionNames:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Lkotlin/jvm/functions/Function1;
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

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->currSelectedIndex:I

    return v0
.end method

.method public final component8()[I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->ids:[I

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxText:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;Z)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;Z)",
            "Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;"
        }
    .end annotation

    const-string v0, "title"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonDrawablesChecked"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonDrawablesUnchecked"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionNames"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxText"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkBoxHandler"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    move-object v1, v0

    move v3, p2

    move/from16 v8, p7

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;-><init>(Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->radioButtonLayoutId:I

    iget v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->radioButtonLayoutId:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesChecked:[I

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesChecked:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesUnchecked:[I

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesUnchecked:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->optionNames:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->optionNames:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->currSelectedIndex:I

    iget v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->currSelectedIndex:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->ids:[I

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->ids:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxText:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxHandler:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxInitialValue:Z

    iget-boolean p1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxInitialValue:Z

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getButtonDrawablesChecked()[I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesChecked:[I

    return-object v0
.end method

.method public final getButtonDrawablesUnchecked()[I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesUnchecked:[I

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

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCheckBoxHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCheckBoxInitialValue()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxInitialValue:Z

    return v0
.end method

.method public final getCheckBoxText()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxText:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrSelectedIndex()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->currSelectedIndex:I

    return v0
.end method

.method public final getIds()[I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->ids:[I

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

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->optionNames:Ljava/util/List;

    return-object v0
.end method

.method public final getRadioButtonLayoutId()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->radioButtonLayoutId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->radioButtonLayoutId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesChecked:[I

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesUnchecked:[I

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->optionNames:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->currSelectedIndex:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->ids:[I

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxText:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxInitialValue:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckableRadioGroup(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", radioButtonLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->radioButtonLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonDrawablesChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesChecked:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonDrawablesUnchecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->buttonDrawablesUnchecked:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optionNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->optionNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currSelectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->currSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->ids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkBoxText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkBoxHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxHandler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkBoxInitialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->checkBoxInitialValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
