.class final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initRxErrorHandler$1;
.super Ljava/lang/Object;
.source "FFSPlugin.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->initRxErrorHandler$ffs_debug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initRxErrorHandler$1;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initRxErrorHandler$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "_e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    instance-of v0, p1, Lio/reactivex/exceptions/UndeliverableException;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 191
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_2

    return-void

    .line 199
    :cond_2
    instance-of v0, p1, Ljava/lang/NullPointerException;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_5

    .line 203
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initRxErrorHandler$1;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undeliverable exception received, not sure what to do: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_4
    throw p1

    .line 201
    :cond_5
    throw p1

    :cond_6
    :goto_1
    return-void
.end method
