.class Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$2;
.super Ljava/lang/Object;
.source "DebugSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 120
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$2;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    xor-int/lit8 p1, p2, 0x1

    .line 127
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/appexpan/client/AppExpanClient;->getStage()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 129
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/appexpan/client/AppExpanClient;->setStage(I)V

    .line 130
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$2;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-static {p1}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->access$000(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    :cond_0
    return-void
.end method
