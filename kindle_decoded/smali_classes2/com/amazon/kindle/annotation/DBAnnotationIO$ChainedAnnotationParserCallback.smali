.class Lcom/amazon/kindle/annotation/DBAnnotationIO$ChainedAnnotationParserCallback;
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
    name = "ChainedAnnotationParserCallback"
.end annotation


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$ChainedAnnotationParserCallback;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onAnnotationFound(Lcom/amazon/kindle/services/sync/AnnotationExport;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/annotation/DBAnnotationIO$ChainedAnnotationParserCallback;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;

    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v1, p1}, Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;->onAnnotationFound(Lcom/amazon/kindle/services/sync/AnnotationExport;)V

    goto :goto_0

    :cond_1
    return-void
.end method
