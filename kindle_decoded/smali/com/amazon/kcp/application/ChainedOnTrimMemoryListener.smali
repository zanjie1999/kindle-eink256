.class Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;
.super Ljava/lang/Object;
.source "ChainedOnTrimMemoryListener.java"

# interfaces
.implements Lcom/amazon/kcp/application/OnTrimMemoryListener;


# instance fields
.field private next:Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

.field private proxy:Lcom/amazon/kcp/application/OnTrimMemoryListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/OnTrimMemoryListener;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;->next:Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

    .line 10
    iput-object v0, p0, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;->proxy:Lcom/amazon/kcp/application/OnTrimMemoryListener;

    .line 13
    iput-object p1, p0, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;->proxy:Lcom/amazon/kcp/application/OnTrimMemoryListener;

    return-void
.end method


# virtual methods
.method setNextListener(Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;->next:Lcom/amazon/kcp/application/ChainedOnTrimMemoryListener;

    return-void
.end method
