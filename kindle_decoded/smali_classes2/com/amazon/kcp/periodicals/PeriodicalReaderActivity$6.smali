.class Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$6;
.super Ljava/lang/Object;
.source "PeriodicalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V
    .locals 0

    .line 1333
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$6;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$6;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/nwstd/upsell/UpsellUtils;->runFullSyncBasedOnTheValueConfiguredFromServer(Landroid/content/Context;)V

    return-void
.end method
