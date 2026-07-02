.class Lcom/amazon/kcp/application/StandaloneApplication$4;
.super Ljava/lang/Object;
.source "StandaloneApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StandaloneApplication;->onStartupComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/StandaloneApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/StandaloneApplication;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneApplication$4;->this$0:Lcom/amazon/kcp/application/StandaloneApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneApplication$4;->this$0:Lcom/amazon/kcp/application/StandaloneApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/StandaloneAppInitializer;->initReaderNotificationsClient(Landroid/content/Context;)V

    .line 255
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplication;->access$000()Ljava/lang/String;

    return-void
.end method
