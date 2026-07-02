.class Lcom/amazon/kcp/debug/DebugActivityV2$8;
.super Landroid/os/AsyncTask;
.source "DebugActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivityV2;->buildAppInfoView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile dsnValue:Ljava/lang/String;

.field private volatile nameValue:Ljava/lang/String;

.field private volatile pidValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

.field final synthetic val$dsn:Landroid/widget/TextView;

.field final synthetic val$name:Landroid/widget/TextView;

.field final synthetic val$pid:Landroid/widget/TextView;

.field final synthetic val$provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivityV2;Lcom/amazon/kcp/application/IDeviceInformationProvider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$dsn:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$pid:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$name:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivityV2$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 266
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->dsnValue:Ljava/lang/String;

    .line 267
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getPid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->pidValue:Ljava/lang/String;

    .line 268
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->nameValue:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivityV2$8;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 274
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 275
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$dsn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->dsnValue:Ljava/lang/String;

    const-string v1, "DSN: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$pid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->pidValue:Ljava/lang/String;

    const-string v1, "PID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->val$name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2$8;->nameValue:Ljava/lang/String;

    const-string v1, "Device Name: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
