.class Lcom/amazon/kcp/debug/DebugActivity$8;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$ch:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$8;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$8;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$8;->val$ch:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 490
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$8;->val$edit:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$8;->val$ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 491
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$8;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
