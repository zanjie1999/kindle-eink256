.class public interface abstract Lcom/amazon/kcp/content/KindleContentConstants;
.super Ljava/lang/Object;
.source "KindleContentConstants.java"


# static fields
.field public static final ALL_EXTERNAL_COLUMNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "key"

    const-string v1, "downloadState"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "title"

    const-string v4, "author"

    const-string v5, "lastAccessed"

    const-string/jumbo v6, "previewUri"

    const-string/jumbo v7, "thumbnailUri"

    const-string/jumbo v8, "viewIntentUri"

    const-string/jumbo v9, "publicationDate"

    const-string/jumbo v10, "readingProgress"

    const-string v11, "fileSize"

    .line 137
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/content/KindleContentConstants;->ALL_EXTERNAL_COLUMNS:Ljava/util/List;

    return-void
.end method
