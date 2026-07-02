.class Lcom/amazon/kcp/reader/ui/ActionBarDecoration$6;
.super Ljava/lang/Object;
.source "ActionBarDecoration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateShownDecoration(Ljava/util/Collection;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

.field final synthetic val$hideUpsellButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Landroid/view/View;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$6;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$6;->val$hideUpsellButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$6;->val$hideUpsellButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
