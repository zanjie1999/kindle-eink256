.class final Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$2;
.super Ljava/lang/Object;
.source "AppUtilsDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$2;->this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$2;->this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setUseGammaEndpoints(Landroid/content/Context;Z)V

    const-string p2, "button"

    .line 41
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isUsingGammaEndpoints()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
