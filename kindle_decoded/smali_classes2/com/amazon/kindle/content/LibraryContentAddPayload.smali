.class public Lcom/amazon/kindle/content/LibraryContentAddPayload;
.super Ljava/lang/Object;
.source "LibraryContentAddPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;
    }
.end annotation


# instance fields
.field private metadata:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/content/LibraryContentAddPayload;->metadata:Ljava/util/Collection;

    .line 49
    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentAddPayload;->source:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    return-void
.end method


# virtual methods
.method public getMetadata()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentAddPayload;->metadata:Ljava/util/Collection;

    return-object v0
.end method

.method public getSource()Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentAddPayload;->source:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    return-object v0
.end method
