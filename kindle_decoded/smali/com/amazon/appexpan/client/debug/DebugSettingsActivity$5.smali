.class Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;
.super Ljava/lang/Object;
.source "DebugSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object p1, p1, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    new-instance v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5$1;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5$1;-><init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;)V

    invoke-virtual {p1, v0}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method
