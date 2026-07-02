.class public final Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
.super Ljava/lang/Object;
.source "AaSettingDisplayBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingDisplayBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingDisplayBuilder.kt\ncom/amazon/kindle/viewoptions/AaSettingDisplayBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1#2:214\n*E\n"
.end annotation


# instance fields
.field private backHandler:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field private checkboxChangeHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-[I-",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private checkboxCreationListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation
.end field

.field private customView:Landroid/view/View;

.field private drawablesChecked:[I

.field private drawablesUnchecked:[I

.field private initialBooleanValue:Ljava/lang/Boolean;

.field private initialIntValue:Ljava/lang/Integer;

.field private initialOptionsSelected:[I

.field private layoutId:Ljava/lang/Integer;

.field private leftView:Landroid/view/View;

.field private maxValue:Ljava/lang/Integer;

.field private optionDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private optionLayoutIds:[I

.field private optionListChangeHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private optionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private radioButtonLayoutId:Ljava/lang/Integer;

.field private rightView:Landroid/view/View;

.field private showTitleEnabled:Ljava/lang/Boolean;

.field private sliderChangeHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private stateDescriptionGetter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;

.field private tickMarksEnabled:Ljava/lang/Boolean;

.field private title:Ljava/lang/String;

.field private toggleChangeHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x7ffffff

    const/16 v29, 0x0

    invoke-direct/range {v0 .. v29}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "[I[I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;[I[I",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-[I-",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView:Landroid/view/View;

    move-object v1, p4

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler:Lkotlin/jvm/functions/Function1;

    move-object v1, p5

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler:Lkotlin/jvm/functions/Function2;

    move-object v1, p6

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    move-object v1, p7

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    move-object v1, p8

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue:Ljava/lang/Boolean;

    move-object v1, p9

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->leftView:Landroid/view/View;

    move-object v1, p10

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->rightView:Landroid/view/View;

    move-object v1, p11

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->maxValue:Ljava/lang/Integer;

    move-object v1, p12

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->tickMarksEnabled:Ljava/lang/Boolean;

    move-object v1, p13

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->showTitleEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked:[I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked:[I

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionDescriptions:Ljava/util/List;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialOptionsSelected:[I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents:Ljava/util/List;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxChangeHandler:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxCreationListener:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 28

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v0, v0, v27

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v0, p27

    :goto_1a
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v0

    .line 35
    invoke-direct/range {p1 .. p28}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)V

    return-void
.end method

.method private final buildCheckableRadioGroup()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;
    .locals 15

    .line 166
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    .line 168
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked:[I

    .line 169
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked:[I

    .line 170
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    .line 171
    iget-object v8, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    .line 172
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    .line 173
    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    .line 174
    iget-object v9, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    .line 175
    iget-object v10, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler:Lkotlin/jvm/functions/Function1;

    .line 176
    iget-object v7, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    if-eqz v7, :cond_0

    .line 180
    new-instance v12, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object v0, v12

    move v2, v11

    move v7, v13

    move v11, v14

    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;-><init>(Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    return-object v12

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final buildCheckboxGroup()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
    .locals 10

    .line 186
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    .line 188
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    .line 189
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionDescriptions:Ljava/util/List;

    .line 190
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialOptionsSelected:[I

    .line 191
    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxChangeHandler:Lkotlin/jvm/functions/Function2;

    .line 192
    iget-object v7, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxCreationListener:Lkotlin/jvm/functions/Function1;

    .line 193
    iget-object v8, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    .line 195
    new-instance v9, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[I)V

    return-object v9

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final buildCustom()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final buildDisclosure()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;
    .locals 10

    .line 201
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 203
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    .line 205
    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 206
    new-instance v7, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler:Lkotlin/jvm/functions/Function0;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/lang/Integer;)V

    return-object v7

    .line 208
    :cond_1
    new-instance v9, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler:Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private final buildMessage()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final buildRadioGroup()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;
    .locals 12

    .line 134
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    .line 137
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked:[I

    .line 138
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked:[I

    .line 139
    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    .line 140
    iget-object v9, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    .line 141
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    .line 142
    iget-object v7, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 146
    new-instance v10, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v0, v10

    move v3, v8

    move v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    return-object v10

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final buildRadioGroupText()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;
    .locals 9

    .line 152
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    .line 154
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    .line 155
    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    .line 156
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    .line 157
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 160
    new-instance v7, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v0, v7

    move v2, v5

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;-><init>(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    return-object v7

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final buildSlider()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;
    .locals 17

    move-object/from16 v0, p0

    .line 114
    iget-object v2, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    .line 115
    iget-object v3, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->leftView:Landroid/view/View;

    .line 116
    iget-object v4, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->rightView:Landroid/view/View;

    .line 117
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->maxValue:Ljava/lang/Integer;

    .line 118
    iget-object v5, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    .line 119
    iget-object v6, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->tickMarksEnabled:Ljava/lang/Boolean;

    .line 120
    iget-object v7, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->showTitleEnabled:Ljava/lang/Boolean;

    .line 121
    iget-object v9, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-eqz v9, :cond_1

    .line 124
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 125
    new-instance v11, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-object v14, v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    move-object v1, v11

    move v5, v8

    move v6, v10

    move v7, v12

    move v8, v13

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;)V

    return-object v11

    .line 127
    :cond_0
    new-instance v13, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v14, 0x0

    const/16 v15, 0x100

    const/16 v16, 0x0

    move-object v1, v13

    move v5, v8

    move v6, v10

    move v7, v11

    move v8, v12

    move-object v10, v14

    move v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private final buildToggle()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;
    .locals 9

    .line 85
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 86
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_3

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 89
    new-instance v6, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V

    return-object v6

    .line 91
    :cond_1
    new-instance v8, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v2, v0

    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final backHandler(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final build()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildCheckboxGroup()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v0

    goto :goto_1

    .line 78
    :pswitch_1
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildMessage()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    move-result-object v0

    goto :goto_1

    .line 77
    :pswitch_2
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildSlider()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    move-result-object v0

    goto :goto_1

    .line 76
    :pswitch_3
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildRadioGroupText()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    move-result-object v0

    goto :goto_1

    .line 75
    :pswitch_4
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildCheckableRadioGroup()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    move-result-object v0

    goto :goto_1

    .line 74
    :pswitch_5
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildRadioGroup()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    move-result-object v0

    goto :goto_1

    .line 73
    :pswitch_6
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildDisclosure()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    move-result-object v0

    goto :goto_1

    .line 72
    :pswitch_7
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildCustom()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    move-result-object v0

    goto :goto_1

    .line 71
    :pswitch_8
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildToggle()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    move-result-object v0

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    return-object p0
.end method

.method public final checkboxChangeHandler(Lkotlin/jvm/functions/Function2;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-[I-",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxChangeHandler:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final checkboxCreationListener(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxCreationListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final contents(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents:Ljava/util/List;

    return-object p0
.end method

.method public final customView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView:Landroid/view/View;

    return-object p0
.end method

.method public final drawablesChecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked:[I

    return-object p0
.end method

.method public final drawablesUnchecked([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked:[I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView:Landroid/view/View;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler:Lkotlin/jvm/functions/Function1;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler:Lkotlin/jvm/functions/Function2;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->leftView:Landroid/view/View;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->leftView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->rightView:Landroid/view/View;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->rightView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->maxValue:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->maxValue:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->tickMarksEnabled:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->tickMarksEnabled:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->showTitleEnabled:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->showTitleEnabled:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked:[I

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked:[I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked:[I

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked:[I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionDescriptions:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionDescriptions:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialOptionsSelected:[I

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialOptionsSelected:[I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler:Lkotlin/jvm/functions/Function0;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxChangeHandler:Lkotlin/jvm/functions/Function2;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxChangeHandler:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxCreationListener:Lkotlin/jvm/functions/Function1;

    iget-object v1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxCreationListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    iget-object p1, p1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBuildType()Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->leftView:Landroid/view/View;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->rightView:Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->maxValue:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->tickMarksEnabled:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->showTitleEnabled:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked:[I

    if-eqz v2, :cond_f

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked:[I

    if-eqz v2, :cond_10

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionDescriptions:Ljava/util/List;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    if-eqz v2, :cond_13

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialOptionsSelected:[I

    if-eqz v2, :cond_14

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_16
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents:Ljava/util/List;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_17
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxChangeHandler:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_18
    const/4 v2, 0x0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxCreationListener:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_19
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1a
    add-int/2addr v0, v1

    return v0
.end method

.method public final initialBooleanValue(Ljava/lang/Boolean;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final initialIntValue(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    return-object p0
.end method

.method public final initialOptionsSelected([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialOptionsSelected:[I

    return-object p0
.end method

.method public final layoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final leftView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->leftView:Landroid/view/View;

    return-object p0
.end method

.method public final maxValue(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->maxValue:Ljava/lang/Integer;

    return-object p0
.end method

.method public final optionDescriptions(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionDescriptions:Ljava/util/List;

    return-object p0
.end method

.method public final optionLayoutIds([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    return-object p0
.end method

.method public final optionListChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final optionNames(Ljava/util/List;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    return-object p0
.end method

.method public final radioButtonLayoutId(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final rightView(Landroid/view/View;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->rightView:Landroid/view/View;

    return-object p0
.end method

.method public final setBuildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    return-void
.end method

.method public final setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public final showTitleEnabled(Ljava/lang/Boolean;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->showTitleEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final sliderChangeHandler(Lkotlin/jvm/functions/Function2;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final stateDescriptionGetter(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final tickMarksEnabled(Ljava/lang/Boolean;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->tickMarksEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AaSettingDisplayBuilder(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toggleChangeHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sliderChangeHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", optionListChangeHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialIntValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialBooleanValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leftView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->leftView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->rightView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->maxValue:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tickMarksEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->tickMarksEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showTitleEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->showTitleEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->layoutId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radioButtonLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->radioButtonLayoutId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawablesChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesChecked:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drawablesUnchecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->drawablesUnchecked:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optionNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", optionDescriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionDescriptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", optionLayoutIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionLayoutIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initialOptionsSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialOptionsSelected:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stateDescriptionGetter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->backHandler:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->contents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkboxChangeHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxChangeHandler:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkboxCreationListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxCreationListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buildType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toggleChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
