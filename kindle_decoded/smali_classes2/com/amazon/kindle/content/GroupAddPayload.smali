.class public Lcom/amazon/kindle/content/GroupAddPayload;
.super Ljava/lang/Object;
.source "GroupAddPayload.java"


# instance fields
.field private metadata:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/content/GroupAddPayload;->metadata:Ljava/util/Collection;

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
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupAddPayload;->metadata:Ljava/util/Collection;

    return-object v0
.end method
