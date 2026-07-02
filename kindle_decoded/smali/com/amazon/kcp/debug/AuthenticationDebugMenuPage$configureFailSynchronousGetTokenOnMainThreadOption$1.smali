.class final Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureFailSynchronousGetTokenOnMainThreadOption$1;
.super Ljava/lang/Object;
.source "AuthenticationDebugMenuPage.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->configureFailSynchronousGetTokenOnMainThreadOption(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $checkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureFailSynchronousGetTokenOnMainThreadOption$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureFailSynchronousGetTokenOnMainThreadOption$1;->$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 34
    iget-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureFailSynchronousGetTokenOnMainThreadOption$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->access$getContext$p(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureFailSynchronousGetTokenOnMainThreadOption$1;->$checkBox:Landroid/widget/CheckBox;

    const-string v1, "checkBox"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/DebugUtils;->setFailSynchronousGetTokenOnMainThread(Landroid/content/Context;Z)V

    return-void
.end method
