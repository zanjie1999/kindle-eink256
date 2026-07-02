.class Lcom/amazon/kcp/debug/DebugActivity$11;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$11;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$11;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$11;->val$prefs:Landroid/content/SharedPreferences;

    const-string v1, "EnableWriteXmlToDisk"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 542
    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 543
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 544
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$11;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    check-cast p1, Landroid/widget/Button;

    invoke-static {v1, p1, v0}, Lcom/amazon/kcp/debug/DebugActivity;->access$100(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;Z)V

    .line 545
    sput-boolean v0, Lcom/amazon/kcp/debug/DebugUtils;->DEBUG_DUMP_XML_TO_FILE:Z

    return-void
.end method
