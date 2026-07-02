.class Lcom/amazon/krf/platform/WebviewPlugin$1;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/WebviewPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/WebviewPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/WebviewPlugin;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$1;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$1;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-static {p1}, Lcom/amazon/krf/platform/WebviewPlugin;->access$000(Lcom/amazon/krf/platform/WebviewPlugin;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
