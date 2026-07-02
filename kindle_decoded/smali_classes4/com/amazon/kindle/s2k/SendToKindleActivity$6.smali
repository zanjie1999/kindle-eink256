.class Lcom/amazon/kindle/s2k/SendToKindleActivity$6;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 772
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "Send button clicked"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 773
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {p1, v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1002(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/util/Vector;)Ljava/util/Vector;

    .line 775
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$400(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1100(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 777
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/s2k/R$string;->noDeviceSelectedErrorText:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 782
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object p1

    const-string v1, "NumOfDevices"

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 783
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v3}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1300(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 785
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v3}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1300(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/s2k/KindleDevice;

    .line 786
    invoke-virtual {v3}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 787
    invoke-virtual {v3}, Lcom/amazon/kindle/s2k/KindleDevice;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 789
    iget-object v5, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v5}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1000(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_3

    .line 793
    iget-object v6, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v6}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "].deviceSerialNumber"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 794
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 796
    iget-object v6, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v6}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "].isSelected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/amazon/kindle/s2k/KindleDevice;->isSelected()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 800
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$400(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z

    move-result v2

    const-string v3, "ArchiveSelected"

    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 803
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 805
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    const-string v2, "WIFI"

    invoke-static {p1, v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1402(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 806
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Delivering document through WIFI"

    invoke-static {p1, v0, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 810
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    const-string v2, "WAN"

    invoke-static {p1, v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1402(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 811
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Delivering document through Whispernet"

    invoke-static {p1, v0, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 813
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 815
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$900(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/s2k/STKUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1502(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 817
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 819
    :cond_8
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1602(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 821
    :cond_9
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TITLE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTHOR"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1800(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OUTPUT_FORMAT"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1400(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DELIVERY_MECHANISM"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$400(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z

    move-result v2

    const-string v3, "ARCHIVE_ENABLED"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 826
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1000(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/util/Vector;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "TARGET_DEVICES"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "APP_NAME"

    const-string v2, "S2KAndroid"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1900(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_VERSION"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OS_NAME"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "OS_ARCHITECTURE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$900(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILE_PATH"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$2000(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INPUT_FORMAT"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Starting the STK service"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 835
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 836
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "After startService(intent)"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 837
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
