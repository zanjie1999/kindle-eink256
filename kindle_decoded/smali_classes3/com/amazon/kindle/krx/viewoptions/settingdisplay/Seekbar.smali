.class public final Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;
.super Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
.source "AaSettingDisplay.kt"


# instance fields
.field private final changeHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/Integer;

.field private final initValue:I

.field private final leftView:Landroid/view/View;

.field private final maxValue:I

.field private final rightView:Landroid/view/View;

.field private final showTitleEnabled:Z

.field private final tickMarksEnabled:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->leftView:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->rightView:Landroid/view/View;

    iput p4, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->maxValue:I

    iput p5, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->initValue:I

    iput-boolean p6, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->tickMarksEnabled:Z

    iput-boolean p7, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->showTitleEnabled:Z

    iput-object p8, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->changeHandler:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->id:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 137
    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->leftView:Landroid/view/View;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->rightView:Landroid/view/View;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->maxValue:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->initValue:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->tickMarksEnabled:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->showTitleEnabled:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->changeHandler:Lkotlin/jvm/functions/Function2;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->id:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->copy(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->leftView:Landroid/view/View;

    return-object v0
.end method

.method public final component3()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->rightView:Landroid/view/View;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->maxValue:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->initValue:I

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->tickMarksEnabled:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->showTitleEnabled:Z

    return v0
.end method

.method public final component8()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->changeHandler:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")",
            "Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;"
        }
    .end annotation

    const-string v0, "title"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->leftView:Landroid/view/View;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->leftView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->rightView:Landroid/view/View;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->rightView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->maxValue:I

    iget v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->maxValue:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->initValue:I

    iget v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->initValue:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->tickMarksEnabled:Z

    iget-boolean v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->tickMarksEnabled:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->showTitleEnabled:Z

    iget-boolean v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->showTitleEnabled:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->changeHandler:Lkotlin/jvm/functions/Function2;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->changeHandler:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->id:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->id:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getChangeHandler()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->changeHandler:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInitValue()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->initValue:I

    return v0
.end method

.method public final getLeftView()Landroid/view/View;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->leftView:Landroid/view/View;

    return-object v0
.end method

.method public final getMaxValue()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->maxValue:I

    return v0
.end method

.method public final getRightView()Landroid/view/View;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->rightView:Landroid/view/View;

    return-object v0
.end method

.method public final getShowTitleEnabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->showTitleEnabled:Z

    return v0
.end method

.method public final getTickMarksEnabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->tickMarksEnabled:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->leftView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->rightView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->maxValue:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->initValue:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->tickMarksEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->showTitleEnabled:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->changeHandler:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->id:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seekbar(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", leftView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->leftView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->rightView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->maxValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->initValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tickMarksEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->tickMarksEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showTitleEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->showTitleEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changeHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->changeHandler:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
