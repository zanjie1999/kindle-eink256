.class public Lcom/amazon/kindle/content/filter/OwnedSamplesFilter;
.super Ljava/lang/Object;
.source "OwnedSamplesFilter.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 19
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
