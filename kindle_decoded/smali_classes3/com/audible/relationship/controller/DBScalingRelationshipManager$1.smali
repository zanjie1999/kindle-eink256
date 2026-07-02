.class Lcom/audible/relationship/controller/DBScalingRelationshipManager$1;
.super Landroid/content/BroadcastReceiver;
.source "DBScalingRelationshipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/relationship/controller/DBScalingRelationshipManager;->registerNetworkConnectedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/relationship/controller/DBScalingRelationshipManager;


# direct methods
.method constructor <init>(Lcom/audible/relationship/controller/DBScalingRelationshipManager;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager$1;->this$0:Lcom/audible/relationship/controller/DBScalingRelationshipManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 214
    invoke-static {p1}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager$1;->this$0:Lcom/audible/relationship/controller/DBScalingRelationshipManager;

    invoke-static {p1}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->access$000(Lcom/audible/relationship/controller/DBScalingRelationshipManager;)Lcom/audible/relationship/controller/IRelationshipUpdateController;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/relationship/controller/IRelationshipUpdateController;->retry()V

    :cond_0
    return-void
.end method
