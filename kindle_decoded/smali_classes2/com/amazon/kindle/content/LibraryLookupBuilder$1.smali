.class final Lcom/amazon/kindle/content/LibraryLookupBuilder$1;
.super Ljava/lang/Object;
.source "LibraryLookupBuilder.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/LibraryLookupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryLookupBuilder$1;->apply(Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    invoke-static {}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$000()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
