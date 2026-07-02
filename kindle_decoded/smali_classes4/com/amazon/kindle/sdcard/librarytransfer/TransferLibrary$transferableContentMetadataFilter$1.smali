.class final Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$transferableContentMetadataFilter$1;
.super Ljava/lang/Object;
.source "TransferLibrary.kt"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$transferableContentMetadataFilter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$transferableContentMetadataFilter$1;

    invoke-direct {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$transferableContentMetadataFilter$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$transferableContentMetadataFilter$1;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$transferableContentMetadataFilter$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    const-string v0, "metadata"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    const-string v0, "metadata.bookType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isDocument()Z

    move-result p1

    if-eqz p1, :cond_0

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
