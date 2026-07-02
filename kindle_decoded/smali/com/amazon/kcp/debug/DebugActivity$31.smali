.class Lcom/amazon/kcp/debug/DebugActivity$31;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onSendOdotMessage(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$isSingleMessage:[Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;[Z)V
    .locals 0

    .line 1353
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$31;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$31;->val$isSingleMessage:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1361
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$31;->val$isSingleMessage:[Z

    aput-boolean v0, p1, v0

    goto :goto_0

    .line 1358
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$31;->val$isSingleMessage:[Z

    aput-boolean p1, p2, v0

    :goto_0
    return-void
.end method
