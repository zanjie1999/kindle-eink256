.class Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;
.super Ljava/lang/Object;
.source "XrayActivity.java"

# interfaces
.implements Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/activity/XrayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SidecarOnChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/activity/XrayActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/ui/activity/XrayActivity$1;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V

    return-void
.end method


# virtual methods
.method public onSidecarChanged(Ljava/lang/String;)V
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$700(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$700(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 814
    invoke-static {}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Database file changed, reloading..."

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$700(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    .line 818
    iget-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$800(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$702(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/SidecarDatabaseAdapter;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 819
    iget-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$700(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 820
    invoke-static {}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to re-acquire database, forcing activity to finish"

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 826
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    new-instance v0, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener$1;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity$SidecarOnChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
