.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;
.source "PeriodicalLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
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

    .line 304
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionBarVisibilityChanged(Z)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshChromes(Z)V

    return-void
.end method
