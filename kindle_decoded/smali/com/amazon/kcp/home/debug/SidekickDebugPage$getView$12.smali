.class final Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$12;
.super Lkotlin/jvm/internal/Lambda;
.source "SidekickDebugPageProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/debug/SidekickDebugPage;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/debug/SidekickDebugPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$12;->this$0:Lcom/amazon/kcp/home/debug/SidekickDebugPage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$12;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$12;->this$0:Lcom/amazon/kcp/home/debug/SidekickDebugPage;

    invoke-static {v0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->access$getSettings$p(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setPageIdOverride(Ljava/lang/String;)V

    return-void
.end method
