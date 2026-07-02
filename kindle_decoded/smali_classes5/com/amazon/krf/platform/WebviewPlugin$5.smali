.class Lcom/amazon/krf/platform/WebviewPlugin$5;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/WebviewPlugin;->setParentView(Lcom/amazon/krf/platform/KRFView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/WebviewPlugin;

.field final synthetic val$parentView:Lcom/amazon/krf/platform/KRFView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/KRFView;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$5;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    iput-object p2, p0, Lcom/amazon/krf/platform/WebviewPlugin$5;->val$parentView:Lcom/amazon/krf/platform/KRFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$5;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin$5;->val$parentView:Lcom/amazon/krf/platform/KRFView;

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$900(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/KRFView;)V

    return-void
.end method
