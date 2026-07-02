.class Lcom/amazon/kindle/config/AbstractModuleInitializer$1;
.super Ljava/lang/Object;
.source "AbstractModuleInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/config/AbstractModuleInitializer;->initializeKRXPlugins(Landroid/content/Context;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sdkModule:Lcom/amazon/kindle/config/Module;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/config/AbstractModuleInitializer;Lcom/amazon/kindle/config/Module;Landroid/content/Context;)V
    .locals 0

    .line 63
    iput-object p2, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer$1;->val$sdkModule:Lcom/amazon/kindle/config/Module;

    iput-object p3, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/amazon/kindle/config/AbstractModuleInitializer;->access$000()Ljava/lang/String;

    const-string v0, "KindleReaderSDKModule.initialize"

    const/4 v1, 0x1

    .line 67
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 68
    iget-object v1, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer$1;->val$sdkModule:Lcom/amazon/kindle/config/Module;

    iget-object v2, p0, Lcom/amazon/kindle/config/AbstractModuleInitializer$1;->val$context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/config/Module;->initialize(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 69
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
