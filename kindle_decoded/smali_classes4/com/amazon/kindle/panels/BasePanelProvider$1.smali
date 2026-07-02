.class Lcom/amazon/kindle/panels/BasePanelProvider$1;
.super Ljava/lang/Object;
.source "BasePanelProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/BasePanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/BasePanelProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/BasePanelProvider;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$1;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider$1;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    invoke-static {v0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider;->access$000(Lcom/amazon/kindle/panels/BasePanelProvider;Landroid/view/View;)V

    return-void
.end method
