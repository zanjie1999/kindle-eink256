.class Lcom/amazon/kcp/debug/DebugActivity$28;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onShowDeviceInformation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 1314
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$28;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$28;->val$deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$28;->val$sb:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1317
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "text/plain"

    .line 1318
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device information for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$28;->val$deviceName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    iget-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$28;->val$sb:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    iget-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$28;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    const-string v0, "Share via..."

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
