.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$1;
.super Ljava/lang/Object;
.source "PeriodicalLayoutForStandAlone.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->updateActionBarItems()V

    return-void
.end method
