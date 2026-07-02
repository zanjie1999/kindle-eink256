.class Lcom/amazon/kcp/ui/brochure/BrochureLayout$2;
.super Ljava/lang/Object;
.source "BrochureLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializeCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$2;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$2;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    const-string v0, "dismiss"

    invoke-static {p1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$100(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Close button pressed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$2;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->performDonePressed()V

    return-void
.end method
