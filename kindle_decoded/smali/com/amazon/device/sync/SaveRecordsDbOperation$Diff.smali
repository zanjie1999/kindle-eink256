.class Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;
.super Ljava/lang/Object;
.source "SaveRecordsDbOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SaveRecordsDbOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Diff"
.end annotation


# instance fields
.field private final mDatasetName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private final mRecords:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "diff dataset name cannot be null"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "diff namespace cannot be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "diff records cannot be null"

    invoke-static {p3, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->mNamespace:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->mDatasetName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->mRecords:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->mNamespace:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->mDatasetName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/util/Collection;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->mRecords:Ljava/util/Collection;

    return-object p0
.end method
