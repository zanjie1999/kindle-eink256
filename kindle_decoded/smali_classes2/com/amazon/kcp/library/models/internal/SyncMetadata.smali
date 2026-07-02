.class public Lcom/amazon/kcp/library/models/internal/SyncMetadata;
.super Ljava/lang/Object;
.source "SyncMetadata.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/ISyncMetadata;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private annotationSyncStatus:Z

.field private hasMore:Z

.field private hasParsedGroupData:Z

.field private itemCount:I

.field private syncMetadataRequestInterval:I

.field private syncTime:Ljava/lang/String;

.field private todoItemRequestInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasMore:Z

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->itemCount:I

    .line 20
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasParsedGroupData:Z

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    return-void
.end method


# virtual methods
.method public empty(Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-object p1, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->TAG:Ljava/lang/String;

    const-string v0, "Emptying the sync MetaData !"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->itemCount:I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasMore:Z

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    .line 82
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->todoItemRequestInterval:I

    .line 83
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncMetadataRequestInterval:I

    .line 84
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasParsedGroupData:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 93
    instance-of v0, p1, Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/amazon/kcp/library/models/internal/SyncMetadata;

    .line 95
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    iget-boolean v2, p1, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncMetadataRequestInterval:I

    iget v2, p1, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncMetadataRequestInterval:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->todoItemRequestInterval:I

    iget v2, p1, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->todoItemRequestInterval:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasParsedGroupData:Z

    iget-boolean p1, p1, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasParsedGroupData:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAnnotationSyncStatus()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->itemCount:I

    return v0
.end method

.method public getMinTodoItemRequestIntervalMinutes()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->todoItemRequestInterval:I

    return v0
.end method

.method public getSyncTime()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasMore:Z

    return v0
.end method

.method public hasParsedVisibleGroupContent()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasParsedGroupData:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setAnnotationSyncStatus(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->annotationSyncStatus:Z

    return-void
.end method

.method public setHasMore(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasMore:Z

    return-void
.end method

.method public setHasParsedVisibleGroupContent(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->hasParsedGroupData:Z

    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->itemCount:I

    return-void
.end method

.method public setMinSyncMetadataRequestInterval(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncMetadataRequestInterval:I

    return-void
.end method

.method public setMinTodoItemRequestInterval(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->todoItemRequestInterval:I

    return-void
.end method

.method public setSyncTime(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadata;->syncTime:Ljava/lang/String;

    return-void
.end method
