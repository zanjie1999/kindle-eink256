.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$7;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showTapToTextTutorial()V
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

    .line 1585
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$7;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1588
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$7;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v1, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_tapToTextTutorial:Landroid/app/AlertDialog;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 1589
    iput-object p1, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_tapToTextTutorial:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
