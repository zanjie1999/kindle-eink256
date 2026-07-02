.class Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$3;
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

    .line 138
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$3;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$3;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object p1, p1, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result p1

    if-eq p1, p2, :cond_0

    .line 144
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$3;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-static {p1}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->access$100(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    .line 145
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$3;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object p1, p1, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    invoke-virtual {p1, p2}, Lcom/amazon/appexpan/client/util/DebugSettings;->setGammaBuild(Z)V

    .line 146
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$3;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-static {p1}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->access$000(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    :cond_0
    return-void
.end method
