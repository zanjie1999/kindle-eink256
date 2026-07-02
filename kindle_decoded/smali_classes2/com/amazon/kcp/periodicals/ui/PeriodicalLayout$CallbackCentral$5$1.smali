.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->execute(Lcom/amazon/android/docviewer/ITOCItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;

.field final synthetic val$item:Lcom/amazon/android/docviewer/ITOCItem;

.field final synthetic val$tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/ITOCItem;)V
    .locals 0

    .line 3150
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;

    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->val$tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    iput-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->val$item:Lcom/amazon/android/docviewer/ITOCItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3153
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->val$tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->val$item:Lcom/amazon/android/docviewer/ITOCItem;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/ITOCItem;)V

    .line 3154
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$3500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;->this$2:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$3600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateSeekBar()V

    :cond_0
    return-void
.end method
