.class public Lcom/amazon/kindle/collections/sync/SyncException;
.super Ljava/lang/Exception;
.source "SyncException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/collections/sync/SyncException$Code;
    }
.end annotation


# instance fields
.field private final code:Lcom/amazon/kindle/collections/sync/SyncException$Code;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/collections/sync/SyncException$Code;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/collections/sync/SyncException;->code:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/amazon/kindle/collections/sync/SyncException$Code;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/collections/sync/SyncException;->code:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    return-object v0
.end method
