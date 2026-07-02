.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$6;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V
    .locals 0

    .line 3165
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$6;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 3169
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$6;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateActionBarItems()V

    return-void
.end method
