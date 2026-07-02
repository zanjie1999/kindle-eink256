.class public final Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$14;
.super Ljava/lang/Object;
.source "SidekickDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/debug/SidekickDebugPage;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/debug/SidekickDebugPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$14;->this$0:Lcom/amazon/kcp/home/debug/SidekickDebugPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string/jumbo p4, "parent"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$14;->this$0:Lcom/amazon/kcp/home/debug/SidekickDebugPage;

    invoke-static {p1}, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->access$getSettings$p(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$14;->this$0:Lcom/amazon/kcp/home/debug/SidekickDebugPage;

    invoke-static {p2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->access$getGammaEndpoints$p(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setGammaEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
