.class Lcom/amazon/kcp/debug/DebugActivity$19;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->initializeAutoShelfOptions(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$enabledAutoShelfFeatureSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences$Editor;Landroid/widget/Switch;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->val$enabledAutoShelfFeatureSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 706
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugActivity;->access$800(Lcom/amazon/kcp/debug/DebugActivity;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 707
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v0, "EnableAutoShelving"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 708
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 710
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    const/4 p2, 0x0

    const-string v0, "Unable to toggle Auto-Shelving Feature.Please close the debug screen and try again."

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 711
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 712
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->val$enabledAutoShelfFeatureSwitch:Landroid/widget/Switch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 713
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->val$enabledAutoShelfFeatureSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    .line 714
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$19;->val$enabledAutoShelfFeatureSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method
