.class Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;
.super Ljava/lang/Object;
.source "DebugFileLogWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;

.field final synthetic val$logLevel:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->this$0:Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$throwable:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$logLevel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->this$0:Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->access$000(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;)Lcom/audible/mobile/framework/Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 220
    iget-object v1, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->this$0:Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$msg:Ljava/lang/String;

    iget-object v4, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->access$300(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->this$0:Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$logLevel:Ljava/lang/String;

    iget-object v3, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$msg:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->access$200(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method
