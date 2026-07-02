.class final Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromCellular$1;
.super Ljava/lang/Object;
.source "ConnectivityBroadcaster.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->onDisconnectedFromCellular()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectivityBroadcaster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectivityBroadcaster.kt\ncom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromCellular$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1587#2,2:48\n*E\n*S KotlinDebug\n*F\n+ 1 ConnectivityBroadcaster.kt\ncom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromCellular$1\n*L\n38#1,2:48\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;


# direct methods
.method constructor <init>(Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromCellular$1;->this$0:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster$onDisconnectedFromCellular$1;->this$0:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-static {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->access$getResponders$p(Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)Ljava/util/Set;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;

    .line 38
    invoke-interface {v1}, Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;->onDisconnectedFromCellular()V

    goto :goto_0

    :cond_0
    return-void
.end method
