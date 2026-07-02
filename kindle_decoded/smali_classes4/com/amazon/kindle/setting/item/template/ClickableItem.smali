.class public Lcom/amazon/kindle/setting/item/template/ClickableItem;
.super Lcom/amazon/kindle/setting/item/template/BaseItem;
.source "ClickableItem.kt"


# instance fields
.field private final category:Lcom/amazon/kindle/setting/item/Category;

.field private final id:Ljava/lang/String;

.field private final onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;

.field private final subTitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/setting/item/template/BaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->category:Lcom/amazon/kindle/setting/item/Category;

    iput-object p4, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->subTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/amazon/kindle/setting/item/Category;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->category:Lcom/amazon/kindle/setting/item/Category;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickHandler()Lcom/amazon/kindle/setting/item/template/OnClickHandler;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/ClickableItem;->title:Ljava/lang/String;

    return-object v0
.end method
