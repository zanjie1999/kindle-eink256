.class Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$AutoDisappearTimeOutReached;
.super Ljava/lang/Object;
.source "AutoDisappearTimeOutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoDisappearTimeOutReached"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$AutoDisappearTimeOutReached;->this$0:Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$1;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$AutoDisappearTimeOutReached;-><init>(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 271
    invoke-static {}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Auto disappear timeout condition reached."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$AutoDisappearTimeOutReached;->this$0:Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/audible/hushpuppy/model/ITimeOutCallback;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->access$200(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;)Lcom/audible/hushpuppy/model/ITimeOutCallback;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$AutoDisappearTimeOutReached;->this$0:Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;

    invoke-static {v2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->access$300(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;)Lcom/audible/hushpuppy/model/ITimeOutCallback;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->access$400(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;[Lcom/audible/hushpuppy/model/ITimeOutCallback;)V

    return-void
.end method
