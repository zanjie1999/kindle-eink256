.class Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$2;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DefaultDebugMenuPageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;->getDebugMenuPages(Landroid/app/Activity;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$2;->this$0:Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$2;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Legacy Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$2;->this$0:Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$2;->val$context:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;->access$100(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
