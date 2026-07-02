.class final Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$setupView$1;
.super Ljava/lang/Object;
.source "MorePrimaryItemUIBuilder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder;->setupView(Landroid/content/Context;Lcom/amazon/kindle/setting/item/template/PrimaryItem;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/item/template/OnClickHandler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$setupView$1;->$onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$setupView$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$setupView$1;->$onClickHandler:Lcom/amazon/kindle/setting/item/template/OnClickHandler;

    iget-object v0, p0, Lcom/amazon/kindle/setting/item/builder/MorePrimaryItemUIBuilder$setupView$1;->$context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/setting/item/template/OnClickHandler;->onClick(Landroid/content/Context;)V

    return-void
.end method
