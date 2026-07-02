.class final Lcom/amazon/kcp/home/widget/DonationWidget$bindView$4;
.super Ljava/lang/Object;
.source "DonationWidget.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/DonationWidget;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/DonationWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/DonationWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/DonationWidget$bindView$4;->this$0:Lcom/amazon/kcp/home/widget/DonationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/DonationWidget$bindView$4;->this$0:Lcom/amazon/kcp/home/widget/DonationWidget;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/amazon/kcp/home/widget/DonationWidget;->access$dismiss(Lcom/amazon/kcp/home/widget/DonationWidget;Landroid/view/View;)V

    return-void
.end method
