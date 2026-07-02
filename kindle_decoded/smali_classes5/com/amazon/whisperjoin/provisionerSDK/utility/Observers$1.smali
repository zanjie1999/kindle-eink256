.class Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;
.super Ljava/lang/Object;
.source "Observers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$observer:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;

.field final synthetic val$sender:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 70
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;->val$observer:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;

    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;->val$sender:Ljava/lang/Object;

    iput-object p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;->val$observer:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;->val$sender:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;->val$event:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
