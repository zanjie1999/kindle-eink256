.class public Lcom/amazon/kindle/setting/item/template/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/Item;


# instance fields
.field private final category:Lcom/amazon/kindle/setting/item/Category;

.field private final id:Ljava/lang/String;

.field private final subTitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/template/BaseItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/template/BaseItem;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/setting/item/template/BaseItem;->category:Lcom/amazon/kindle/setting/item/Category;

    iput-object p4, p0, Lcom/amazon/kindle/setting/item/template/BaseItem;->subTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/amazon/kindle/setting/item/Category;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/BaseItem;->category:Lcom/amazon/kindle/setting/item/Category;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/BaseItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/BaseItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/template/BaseItem;->title:Ljava/lang/String;

    return-object v0
.end method
