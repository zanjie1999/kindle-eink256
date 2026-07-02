.class Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$1;
.super Ljava/lang/Object;
.source "AndroidBookReader.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$1;->this$0:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$1;->this$0:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->access$000(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)V

    return-void
.end method
