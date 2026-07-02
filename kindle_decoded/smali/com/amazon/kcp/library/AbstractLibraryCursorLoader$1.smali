.class Lcom/amazon/kcp/library/AbstractLibraryCursorLoader$1;
.super Ljava/lang/Object;
.source "AbstractLibraryCursorLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->onCancelLoad()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader$1;->this$0:Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader$1;->this$0:Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->deliverCancellation()V

    return-void
.end method
