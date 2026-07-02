.class public final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;
.super Ljava/lang/Object;
.source "LibraryTransferUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldSilentTransferBook(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
