.class Lcom/amazon/kcp/debug/DebugPlugin$12$1$1;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$12$1;->configureKindleSpecialOfferOption(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/debug/DebugPlugin$12$1;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$12$1;Landroid/widget/CheckBox;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$12$1$1;->this$2:Lcom/amazon/kcp/debug/DebugPlugin$12$1;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugPlugin$12$1$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$12$1$1;->this$2:Lcom/amazon/kcp/debug/DebugPlugin$12$1;

    iget-object p1, p1, Lcom/amazon/kcp/debug/DebugPlugin$12$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$12$1$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/DebugUtils;->setKindleSpecialOfferEnabled(Landroid/content/Context;Z)V

    return-void
.end method
