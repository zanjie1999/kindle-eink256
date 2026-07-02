.class Lcom/amazon/krf/platform/WebviewPlugin$7;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/WebviewPlugin;->internalSetParentView(Lcom/amazon/krf/platform/KRFView;)V
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

    .line 284
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$7;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
