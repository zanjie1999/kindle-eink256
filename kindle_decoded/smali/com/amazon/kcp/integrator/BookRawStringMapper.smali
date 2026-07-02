.class public final Lcom/amazon/kcp/integrator/BookRawStringMapper;
.super Ljava/lang/Object;
.source "RawStringMapper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/RawStringMapper;


# instance fields
.field private final bookData:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    const-string v0, "bookData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/BookRawStringMapper;->bookData:Lcom/amazon/kindle/content/ContentMetadata;

    return-void
.end method


# virtual methods
.method public generateId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/integrator/BookRawStringMapper;->bookData:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->bookItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateString(Lcom/amazon/kindle/observablemodel/RawDictionaryType;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rawType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/amazon/kcp/integrator/BookRawStringMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/integrator/BookRawStringMapper;->bookData:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/integrator/BookRawStringMapper;->bookData:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
