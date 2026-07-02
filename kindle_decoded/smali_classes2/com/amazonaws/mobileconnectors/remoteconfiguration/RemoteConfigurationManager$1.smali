.class Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->syncOnNewThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

.field final synthetic val$syncCallback:Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;->this$0:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;->val$syncCallback:Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;->this$0:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;->val$syncCallback:Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->access$600(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V

    return-void
.end method
