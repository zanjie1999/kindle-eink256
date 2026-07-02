.class Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;
.super Ljava/lang/Object;
.source "KRXAppExpanClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->initialize(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$platform:Ljava/lang/String;

.field final synthetic val$platformVersion:J


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->this$0:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    iput-object p2, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->val$platform:Ljava/lang/String;

    iput-wide p4, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->val$platformVersion:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v6

    .line 72
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->val$applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->val$platform:Ljava/lang/String;

    iget-wide v4, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->val$platformVersion:J

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/appexpan/client/AppExpanClient;->initialize(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 75
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/AppExpanClient;->setLogLevel(I)V

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->this$0:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    invoke-static {v0}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->access$000(Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;)Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->this$0:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    new-instance v1, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;-><init>()V

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->access$002(Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;)Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;

    .line 81
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient$1;->this$0:Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    invoke-static {v1}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->access$000(Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;)Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/AppExpanClient;->registerResourceSetEventListener(Lcom/amazon/appexpan/client/event/ResourceSetEventListener;)V

    :cond_1
    return-void
.end method
