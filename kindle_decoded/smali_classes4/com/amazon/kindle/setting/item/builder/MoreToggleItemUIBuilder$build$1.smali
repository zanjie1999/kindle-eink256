.class final Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;
.super Ljava/lang/Object;
.source "MoreToggleItemUIBuilder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder;->build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $checkBox:Landroid/widget/CheckBox;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $onToggleHandler:Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Lcom/amazon/kindle/setting/item/template/OnToggleHandler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;->$checkBox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;->$onToggleHandler:Lcom/amazon/kindle/setting/item/template/OnToggleHandler;

    iput-object p3, p0, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    iget-object p1, p0, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;->$checkBox:Landroid/widget/CheckBox;

    const-string v0, "checkBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;->$onToggleHandler:Lcom/amazon/kindle/setting/item/template/OnToggleHandler;

    iget-object v1, p0, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;->$context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/setting/item/template/OnToggleHandler;->onToggle(Landroid/content/Context;Z)V

    return-void
.end method
