.class public Lcom/amazon/kindle/setting/item/template/PrimaryItem;
.super Lcom/amazon/kindle/setting/item/template/ClickableItem;
.source "PrimaryItem.kt"


# instance fields
.field private final category:Lcom/amazon/kindle/setting/item/Category;

.field private final contentDescription:Ljava/lang/String;

.field private final iconResId:I

.field private final id:Ljava/lang/String;

.field private final isUIDisabled:Z

.field private final onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;

.field private final secondaryIconResId:I

.field private final subTitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x180

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;)V
    .locals 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->category:Lcom/amazon/kindle/setting/item/Category;

    iput p4, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->iconResId:I

    iput-boolean p5, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->isUIDisabled:Z

    iput-object p6, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->subTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;

    iput p8, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->secondaryIconResId:I

    iput-object p9, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->contentDescription:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v3

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    move/from16 v11, p8

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    move-object v12, v3

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 30
    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/amazon/kindle/setting/item/Category;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->category:Lcom/amazon/kindle/setting/item/Category;

    return-object v0
.end method

.method public final getContentDescription()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconResId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->iconResId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickHandler()Lcom/amazon/kindle/setting/item/template/OnClickHandler;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;

    return-object v0
.end method

.method public final getSecondaryIconResId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->secondaryIconResId:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final isUIDisabled()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->isUIDisabled:Z

    return v0
.end method
