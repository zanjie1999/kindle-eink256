.class public Lcom/amazon/kindle/content/ContentUpdate;
.super Ljava/lang/Object;
.source "ContentUpdate.java"


# instance fields
.field private final isUserInitiated:Z

.field private final metadata:Lcom/amazon/kindle/content/ContentMetadata;

.field private final prevMetadata:Lcom/amazon/kindle/content/ContentMetadata;

.field private final source:Ljava/lang/String;

.field private final updatedFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/content/ContentUpdate;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;Z)V"
        }
    .end annotation

    const-string v5, "Library"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/content/ContentUpdate;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/content/ContentUpdate;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 46
    iput-object p2, p0, Lcom/amazon/kindle/content/ContentUpdate;->prevMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 47
    iput-object p3, p0, Lcom/amazon/kindle/content/ContentUpdate;->updatedFields:Ljava/util/Set;

    .line 48
    iput-boolean p4, p0, Lcom/amazon/kindle/content/ContentUpdate;->isUserInitiated:Z

    .line 49
    iput-object p5, p0, Lcom/amazon/kindle/content/ContentUpdate;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentUpdate;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    return-object v0
.end method

.method public getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentUpdate;->prevMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentUpdate;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentUpdate;->updatedFields:Ljava/util/Set;

    return-object v0
.end method

.method public isUserInitiated()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/amazon/kindle/content/ContentUpdate;->isUserInitiated:Z

    return v0
.end method

.method public wereFieldsUpdated(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadataField;

    .line 97
    iget-object v1, p0, Lcom/amazon/kindle/content/ContentUpdate;->updatedFields:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
