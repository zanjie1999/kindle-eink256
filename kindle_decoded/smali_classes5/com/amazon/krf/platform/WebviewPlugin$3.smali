.class Lcom/amazon/krf/platform/WebviewPlugin$3;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/WebviewPlugin;->setRect(Lcom/amazon/krf/platform/Rect25D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/WebviewPlugin;

.field final synthetic val$rect:Lcom/amazon/krf/platform/Rect25D;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/Rect25D;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$3;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    iput-object p2, p0, Lcom/amazon/krf/platform/WebviewPlugin$3;->val$rect:Lcom/amazon/krf/platform/Rect25D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$3;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin$3;->val$rect:Lcom/amazon/krf/platform/Rect25D;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$402(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/Rect25D;)Lcom/amazon/krf/platform/Rect25D;

    .line 143
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$3;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {v0}, Lcom/amazon/krf/platform/WebviewPlugin;->access$500(Lcom/amazon/krf/platform/WebviewPlugin;)V

    return-void
.end method
