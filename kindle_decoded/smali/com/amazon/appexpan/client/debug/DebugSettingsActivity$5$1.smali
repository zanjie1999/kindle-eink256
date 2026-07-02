.class Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5$1;
.super Ljava/lang/Object;
.source "DebugSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5$1;->this$1:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5$1;->this$1:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;

    iget-object v0, v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object v0, v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadResources()V

    return-void
.end method
