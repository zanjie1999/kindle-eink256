.class Lcom/amazon/kcp/reader/ReaderActivity$13;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->ContentMissingEventListener(Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$13;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$13;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->bindPanelContent()V

    return-void
.end method
