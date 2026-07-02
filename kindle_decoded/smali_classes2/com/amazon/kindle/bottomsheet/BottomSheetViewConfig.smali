.class public final Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;
.super Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;
.source "BottomSheetPresenter.kt"


# instance fields
.field private final dismissOnTapOutside:Z

.field private final dismissWithSwipe:Z

.field private final forceShowDragIcon:Z

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final hasDimBackground:Z

.field private final peekHeight:I

.field private final setDefaultMaxWidth:Z

.field private final skipCollapsedState:Z

.field private final tag:Ljava/lang/String;

.field private final theme:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZ)V
    .locals 13

    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZZ)V
    .locals 12

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p7

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move/from16 v4, p8

    move v5, p3

    move/from16 v6, p10

    .line 106
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->tag:Ljava/lang/String;

    iput-object v10, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->fragment:Landroidx/fragment/app/Fragment;

    move v0, p3

    iput v0, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->peekHeight:I

    move/from16 v0, p4

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->hasDimBackground:Z

    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissWithSwipe:Z

    move/from16 v0, p6

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissOnTapOutside:Z

    iput-object v11, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->theme:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move/from16 v0, p8

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->skipCollapsedState:Z

    move/from16 v0, p9

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->forceShowDragIcon:Z

    move/from16 v0, p10

    iput-boolean v0, v8, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->setDefaultMaxWidth:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 102
    sget-object v1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-object v10, v1

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move/from16 v12, p9

    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    const/4 v13, 0x0

    goto :goto_7

    :cond_7
    move/from16 v13, p10

    :goto_7
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    .line 105
    invoke-direct/range {v3 .. v13}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getPeekHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getPeekHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->hasDimBackground:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->hasDimBackground:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissWithSwipe:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissWithSwipe:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissOnTapOutside:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissOnTapOutside:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->forceShowDragIcon:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->forceShowDragIcon:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSetDefaultMaxWidth()Z

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

.method public final getDismissOnTapOutside()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissOnTapOutside:Z

    return v0
.end method

.method public final getDismissWithSwipe()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissWithSwipe:Z

    return v0
.end method

.method public final getForceShowDragIcon()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->forceShowDragIcon:Z

    return v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getHasDimBackground()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->hasDimBackground:Z

    return v0
.end method

.method public getPeekHeight()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->peekHeight:I

    return v0
.end method

.method public getSetDefaultMaxWidth()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->setDefaultMaxWidth:Z

    return v0
.end method

.method public getSkipCollapsedState()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->skipCollapsedState:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->theme:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTag()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

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

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getPeekHeight()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->hasDimBackground:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissWithSwipe:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissOnTapOutside:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->forceShowDragIcon:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BottomSheetViewConfig(tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", peekHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getPeekHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasDimBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->hasDimBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dismissWithSwipe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissWithSwipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dismissOnTapOutside="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->dismissOnTapOutside:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skipCollapsedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceShowDragIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->forceShowDragIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", setDefaultMaxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
