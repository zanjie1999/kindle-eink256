.class Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver$1;
.super Ljava/lang/Object;
.source "ScreenOnOffReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver$1;->this$0:Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver$1;->this$0:Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;->access$000(Lcom/audible/hushpuppy/controller/audible/readingstream/ScreenOnOffReceiver;)Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->screenOff()V

    return-void
.end method
