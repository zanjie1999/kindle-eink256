.class Lcom/amazon/kcp/debug/DebugActivity$42;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onloadAsinDetail(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$asinText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 2200
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$42;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$42;->val$asinText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2202
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$42;->val$asinText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 2204
    iget-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$42;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/amazon/kcp/debug/DebugActivity;->access$1300(Lcom/amazon/kcp/debug/DebugActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
