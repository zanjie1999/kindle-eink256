.class final Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$2;
.super Ljava/lang/Object;
.source "AppCoreDebugPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$2;->this$0:Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAppSettingsController;->setHasMigratedDocuments(Z)V

    .line 41
    iget-object p1, p0, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$2;->this$0:Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Migration flag has been reset to false"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
