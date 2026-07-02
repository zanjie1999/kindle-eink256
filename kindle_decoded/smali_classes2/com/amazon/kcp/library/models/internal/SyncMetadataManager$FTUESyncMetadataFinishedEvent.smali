.class public Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$FTUESyncMetadataFinishedEvent;
.super Ljava/lang/Object;
.source "SyncMetadataManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FTUESyncMetadataFinishedEvent"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
