.class Lcom/amazon/device/sync/SyncDumpService$Dumper;
.super Ljava/lang/Object;
.source "SyncDumpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncDumpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dumper"
.end annotation


# static fields
.field private static final ACCOUNT_PREFIX:Ljava/lang/String; = ""

.field private static final DATASET_PREFIX:Ljava/lang/String; = "--->"

.field private static final RECORD_PREFIX:Ljava/lang/String; = "------>"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDatasetNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpRecords:Z

.field private mDumpValues:Z

.field private mIsCompleted:Z

.field private mNamespace:Ljava/lang/String;

.field private final mStringWriter:Ljava/io/StringWriter;

.field private final mWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mStringWriter:Ljava/io/StringWriter;

    .line 46
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mStringWriter:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mIsCompleted:Z

    .line 58
    iput-object p1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/SyncDumpService$Dumper;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/SyncDumpService$Dumper;)Ljava/io/PrintWriter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/SyncDumpService$Dumper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/FetchDataException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->dumpDatasetsForAccount()V

    return-void
.end method

.method static synthetic access$302(Lcom/amazon/device/sync/SyncDumpService$Dumper;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mIsCompleted:Z

    return p1
.end method

.method private dumpDatasetsForAccount()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/FetchDataException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mAccount:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s Account: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mNamespace:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataStore;->openDirectory()Lcom/amazon/device/sync/SyncableDataDirectory;

    move-result-object v1

    .line 172
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDataDirectory;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/sync/SyncableDatasetInfo;

    .line 174
    iget-object v4, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mDatasetNames:Ljava/util/HashSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mDatasetNames:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->dumpRecordsForDataset(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDataDirectory;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDataDirectory;->close()V

    throw v0
.end method

.method private dumpRecords(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 7

    .line 229
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 231
    iget-boolean v1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mDumpValues:Z

    const/4 v2, 0x1

    const-string v3, "------>"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v5

    const-string v0, "%s %s : %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "%s %s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpRecordsForDataset(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "--->"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object p2, v1, v4

    const-string v5, "%s Name: %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mDumpRecords:Z

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "%s Records:"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    const-string p2, "------>"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    const-string p2, "(empty)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->dumpRecords(Lcom/amazon/device/sync/SyncableStringMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 222
    :goto_1
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 214
    :try_start_1
    iget-object p2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Failed to dump dataset"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 216
    iget-object p2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_3

    .line 222
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->close()V

    :cond_3
    throw p1
.end method

.method public static printUsage(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Usage:"

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump preparation:"

    .line 64
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [params] namespace [set of datasets to dump]"

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Params:"

    .line 66
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     --records Outputs records names"

    .line 67
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     --values  Outputs value for each record"

    .line 68
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     --account Account id to use. Primary account is default."

    .line 69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Output dump: no command line arguments are required"

    .line 70
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 124
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;-><init>(Lcom/amazon/device/sync/SyncDumpService$Dumper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public parseCommandLine([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncDumpService$ArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    aget-object v1, p1, v0

    const-string v3, "--records"

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    iput-boolean v2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mDumpRecords:Z

    goto :goto_1

    :cond_0
    const-string v3, "--values"

    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iput-boolean v2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mDumpValues:Z

    goto :goto_1

    :cond_1
    const-string v3, "--account"

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 89
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 91
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mAccount:Ljava/lang/String;

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    .line 95
    :cond_2
    new-instance v1, Lcom/amazon/device/sync/SyncDumpService$ArgumentException;

    aget-object p1, p1, v0

    const-string v0, "No account value is provided"

    invoke-direct {v1, v0, p1}, Lcom/amazon/device/sync/SyncDumpService$ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_3
    new-instance v1, Lcom/amazon/device/sync/SyncDumpService$ArgumentException;

    aget-object p1, p1, v0

    const-string v0, "Unknown option"

    invoke-direct {v1, v0, p1}, Lcom/amazon/device/sync/SyncDumpService$ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_4
    array-length v1, p1

    if-eq v0, v1, :cond_6

    .line 112
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mNamespace:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 114
    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 116
    new-instance v3, Ljava/util/HashSet;

    array-length v4, p1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    invoke-static {p1, v1, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mDatasetNames:Ljava/util/HashSet;

    :cond_5
    return-void

    .line 109
    :cond_6
    new-instance p1, Lcom/amazon/device/sync/SyncDumpService$ArgumentException;

    const-string v0, "No namespace is provided"

    invoke-direct {p1, v0}, Lcom/amazon/device/sync/SyncDumpService$ArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public report(Ljava/io/PrintWriter;)V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mIsCompleted:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper;->mStringWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Fetching data from the server."

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Try to dump results latter."

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
