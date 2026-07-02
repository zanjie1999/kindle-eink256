.class final Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "FoldableDebug.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 41
    iget-object p1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;

    invoke-static {p1}, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->access$getActivity$p(Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;

    invoke-static {v1}, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->access$getActivity$p(Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
