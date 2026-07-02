.class public final Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;
.super Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
.source "AaSettingDisplay.kt"


# instance fields
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

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionNames"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->title:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->radioButtonLayoutId:I

    iput-object p3, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->optionNames:Ljava/util/List;

    iput-object p4, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->changeHandler:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->currSelectedIndex:I

    iput-object p6, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->ids:[I

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[IILjava/lang/Object;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->radioButtonLayoutId:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->optionNames:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->changeHandler:Lkotlin/jvm/functions/Function1;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->currSelectedIndex:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->ids:[I

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->copy(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->radioButtonLayoutId:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->optionNames:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Lkotlin/jvm/functions/Function1;
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

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->changeHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->currSelectedIndex:I

    return v0
.end method

.method public final component6()[I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->ids:[I

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;I[I)",
            "Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionNames"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;-><init>(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->radioButtonLayoutId:I

    iget v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->radioButtonLayoutId:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->optionNames:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->optionNames:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->changeHandler:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->currSelectedIndex:I

    iget v3, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->currSelectedIndex:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->ids:[I

    iget-object p1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->ids:[I

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

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->changeHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCurrSelectedIndex()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->currSelectedIndex:I

    return v0
.end method

.method public final getIds()[I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->ids:[I

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

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->optionNames:Ljava/util/List;

    return-object v0
.end method

.method public final getRadioButtonLayoutId()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->radioButtonLayoutId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->radioButtonLayoutId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->optionNames:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->changeHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->currSelectedIndex:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->ids:[I

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioGroupText(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", radioButtonLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->radioButtonLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", optionNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->optionNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currSelectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->currSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->ids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
