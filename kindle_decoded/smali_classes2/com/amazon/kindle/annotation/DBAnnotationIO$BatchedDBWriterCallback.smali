.class Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;
.super Ljava/lang/Object;
.source "DBAnnotationIO.java"

# interfaces
.implements Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/annotation/DBAnnotationIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedDBWriterCallback"
.end annotation


# instance fields
.field private final batchSize:I

.field private final bookId:Ljava/lang/String;

.field private final dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

.field private final pendingAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationExport;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/annotation/IAnnotationDAO;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    .line 196
    iput p2, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->batchSize:I

    .line 197
    iput-object p3, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->userId:Ljava/lang/String;

    .line 198
    iput-object p4, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->bookId:Ljava/lang/String;

    .line 199
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->pendingAnnotations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->bookId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->pendingAnnotations:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->insertAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->pendingAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onAnnotationFound(Lcom/amazon/kindle/services/sync/AnnotationExport;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->pendingAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->pendingAnnotations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->batchSize:I

    if-ne p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/amazon/kindle/annotation/DBAnnotationIO$BatchedDBWriterCallback;->flush()V

    :cond_0
    return-void
.end method
