.class final Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;
.super Ljava/lang/Object;
.source "TransferLibrary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BookData"
.end annotation


# instance fields
.field private final destinationDir:Ljava/io/File;

.field private final krxBook:Lcom/amazon/kindle/krx/content/IBook;

.field private final metadata:Lcom/amazon/kindle/content/ContentMetadata;

.field private final participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Ljava/io/File;)V
    .locals 1

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    iput-object p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->destinationDir:Ljava/io/File;

    .line 233
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->participants:Ljava/util/List;

    .line 238
    sget-object p1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    invoke-static {p1}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->access$getLibraryController$p(Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;)Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/ILibraryController;->getKrxBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const-string p2, "libraryController.getKrxBook(metadata)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->krxBook:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    iget-object v1, p1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->destinationDir:Ljava/io/File;

    iget-object p1, p1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->destinationDir:Ljava/io/File;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDestinationDir()Ljava/io/File;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->destinationDir:Ljava/io/File;

    return-object v0
.end method

.method public final getKrxBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->krxBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public final getMetadata()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    return-object v0
.end method

.method public final getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->participants:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->destinationDir:Ljava/io/File;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookData(metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->destinationDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
