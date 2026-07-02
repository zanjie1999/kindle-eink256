.class public Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field private author:Ljava/lang/String;

.field private pronunciation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;->author:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;->pronunciation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;->pronunciation:Ljava/lang/String;

    return-object v0
.end method
