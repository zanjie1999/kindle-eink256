.class Lcom/amazon/kcp/reader/ReaderActivity$5;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$5;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 694
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggled orientation lock button to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Menu"

    if-eqz p2, :cond_0

    .line 697
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$5;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->access$400(Lcom/amazon/kcp/reader/ReaderActivity;)I

    move-result p2

    .line 698
    invoke-static {p2}, Lcom/amazon/kcp/util/MetricsUtils;->getActivityOrientationForMetrics(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->reportOrientationLockTap(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$5;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;->lockSetting(I)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 703
    invoke-static {p2}, Lcom/amazon/kcp/util/MetricsUtils;->getActivityOrientationForMetrics(I)Ljava/lang/String;

    move-result-object p2

    .line 702
    invoke-static {p2, p1}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->reportOrientationLockTap(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$5;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/OrientationLockSettingManager;->unlockSetting()V

    :goto_0
    return-void
.end method
