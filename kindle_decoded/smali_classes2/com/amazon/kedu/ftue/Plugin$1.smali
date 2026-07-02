.class Lcom/amazon/kedu/ftue/Plugin$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/ftue/Plugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/ftue/Plugin;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/ftue/Plugin;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kedu/ftue/Plugin$1;->this$0:Lcom/amazon/kedu/ftue/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kedu/ftue/Plugin$1;->this$0:Lcom/amazon/kedu/ftue/Plugin;

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/Plugin;->initializeAssetManager()V

    return-void
.end method
