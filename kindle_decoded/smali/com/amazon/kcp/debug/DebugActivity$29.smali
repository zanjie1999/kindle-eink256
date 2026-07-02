.class Lcom/amazon/kcp/debug/DebugActivity$29;
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

.field final synthetic val$sb:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 1327
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$29;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$29;->val$sb:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1330
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1000()Ljava/lang/String;

    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$29;->val$sb:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    return-void
.end method
