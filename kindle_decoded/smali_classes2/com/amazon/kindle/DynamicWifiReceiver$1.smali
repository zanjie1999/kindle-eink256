.class Lcom/amazon/kindle/DynamicWifiReceiver$1;
.super Landroid/os/AsyncTask;
.source "DynamicWifiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/DynamicWifiReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/DynamicWifiReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/DynamicWifiReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/DynamicWifiReceiver$1;->this$0:Lcom/amazon/kindle/DynamicWifiReceiver;

    iput-object p2, p0, Lcom/amazon/kindle/DynamicWifiReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/DynamicWifiReceiver$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/DynamicWifiReceiver$1;->this$0:Lcom/amazon/kindle/DynamicWifiReceiver;

    iget-object v1, p0, Lcom/amazon/kindle/DynamicWifiReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/DynamicWifiReceiver;->access$000(Lcom/amazon/kindle/DynamicWifiReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1
.end method
