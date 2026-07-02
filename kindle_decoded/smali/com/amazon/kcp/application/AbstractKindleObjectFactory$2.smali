.class Lcom/amazon/kcp/application/AbstractKindleObjectFactory$2;
.super Ljava/lang/Object;
.source "AbstractKindleObjectFactory.java"

# interfaces
.implements Lcom/amazon/kindle/content/IBookOwnershipRecorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AbstractKindleObjectFactory;->getBookOwnershipRecorder()Lcom/amazon/kindle/content/IBookOwnershipRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AbstractKindleObjectFactory;)V
    .locals 0

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOwnership(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getOwners(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeOwnership(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    return-void
.end method
