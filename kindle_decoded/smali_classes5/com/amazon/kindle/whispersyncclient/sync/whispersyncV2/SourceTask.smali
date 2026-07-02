.class public final Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;
.super Ljava/lang/Object;
.source "SourceTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$SyncNamespaceTask;,
        Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$DeleteDatasetTask;,
        Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$UpdateDatasetTask;,
        Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask$ReadDatasetTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SourceTask;->TAG:Ljava/lang/String;

    return-object v0
.end method
