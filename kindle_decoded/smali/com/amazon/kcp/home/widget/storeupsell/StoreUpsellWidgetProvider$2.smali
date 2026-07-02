.class Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$2;
.super Ljava/lang/Object;
.source "StoreUpsellWidgetProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->bindWidgetView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$2;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$2;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->access$200(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$2;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->access$200(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->STORE:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    :cond_0
    return-void
.end method
