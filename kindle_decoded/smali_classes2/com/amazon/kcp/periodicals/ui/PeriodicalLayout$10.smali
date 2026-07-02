.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$10;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateGridViewToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 1892
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$10;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1895
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$10;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    sget-object v0, Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;->BUTTON:Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->toggleGridView(Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;)V

    return-void
.end method
