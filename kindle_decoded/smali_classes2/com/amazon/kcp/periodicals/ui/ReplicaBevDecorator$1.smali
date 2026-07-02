.class Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator$1;
.super Ljava/lang/Object;
.source "ReplicaBevDecoratorProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->access$000(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    move-result-object p1

    sget-object v0, Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;->BUTTON:Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->toggleGridView(Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;)V

    return-void
.end method
