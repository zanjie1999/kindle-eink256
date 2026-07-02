.class Lcom/audible/hushpuppy/plugin/ApplicationPlugin$1;
.super Ljava/lang/Object;
.source "ApplicationPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->checkHushpuppyEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$1;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin$1;->this$0:Lcom/audible/hushpuppy/plugin/ApplicationPlugin;

    sget-object v1, Lcom/audible/hushpuppy/plugin/ForceUpdate;->NOT_FORCED:Lcom/audible/hushpuppy/plugin/ForceUpdate;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->access$000(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/plugin/ForceUpdate;)V

    return-void
.end method
