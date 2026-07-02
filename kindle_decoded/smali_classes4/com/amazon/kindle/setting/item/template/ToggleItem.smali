.class public Lcom/amazon/kindle/setting/item/template/ToggleItem;
.super Lcom/amazon/kindle/setting/item/template/BaseItem;
.source "ToggleItem.kt"


# instance fields
.field private final category:Lcom/amazon/kindle/setting/item/Category;

.field private final id:Ljava/lang/String;

.field private final isOn:Z

.field private final isSubtitleHtml:Z

.field private final onToggleHandler:Lcom/amazon/kindle/setting/item/template/OnToggleHandler;

.field private final subTitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;)V
    .locals 10

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;Z)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/amazon/kindle/setting/item/template/BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->subTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->category:Lcom/amazon/kindle/setting/item/Category;

    iput-boolean p5, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->isOn:Z

    iput-object p6, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->onToggleHandler:Lcom/amazon/kindle/setting/item/template/OnToggleHandler;

    iput-boolean p7, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->isSubtitleHtml:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .line 20
    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;Z)V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/amazon/kindle/setting/item/Category;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->category:Lcom/amazon/kindle/setting/item/Category;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnToggleHandler()Lcom/amazon/kindle/setting/item/template/OnToggleHandler;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->onToggleHandler:Lcom/amazon/kindle/setting/item/template/OnToggleHandler;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final isOn()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->isOn:Z

    return v0
.end method

.method public final isSubtitleHtml()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/amazon/kindle/setting/item/template/ToggleItem;->isSubtitleHtml:Z

    return v0
.end method
