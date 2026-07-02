.class public final Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;
.super Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;
.source "BottomSheetPresenter.kt"


# instance fields
.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final peekHeight:I

.field private final setDefaultMaxWidth:Z

.field private final showFullHeight:Z

.field private final skipCollapsedState:Z

.field private final tag:Ljava/lang/String;

.field private final theme:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZIZ)V
    .locals 12

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    move-object v11, p3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 121
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v8, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->tag:Ljava/lang/String;

    iput-object v10, v8, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->fragment:Landroidx/fragment/app/Fragment;

    iput-object v11, v8, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->theme:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move/from16 v0, p4

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->skipCollapsedState:Z

    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->showFullHeight:Z

    move/from16 v0, p6

    iput v0, v8, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->peekHeight:I

    move/from16 v0, p7

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->setDefaultMaxWidth:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move v7, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 120
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZIZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->showFullHeight:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->showFullHeight:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getPeekHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getPeekHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getPeekHeight()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->peekHeight:I

    return v0
.end method

.method public getSetDefaultMaxWidth()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->setDefaultMaxWidth:Z

    return v0
.end method

.method public final getShowFullHeight()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->showFullHeight:Z

    return v0
.end method

.method public getSkipCollapsedState()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->skipCollapsedState:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->theme:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->showFullHeight:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getPeekHeight()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModalBottomSheetViewConfig(tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skipCollapsedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showFullHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->showFullHeight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", peekHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getPeekHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", setDefaultMaxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
