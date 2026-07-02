.class public abstract Lcom/amazon/kcp/events/AbstractDocViewerEvent;
.super Lcom/amazon/kindle/services/events/AbstractSelfPublishingEvent;
.source "AbstractDocViewerEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/services/events/AbstractSelfPublishingEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessageQueueKey()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 19
    const-class v0, Lcom/amazon/kcp/events/AbstractDocViewerEvent;

    return-object v0
.end method
