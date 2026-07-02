.class public final Lcom/amazon/kcp/integrator/GroupRawStringMapper;
.super Ljava/lang/Object;
.source "RawStringMapper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/RawStringMapper;


# instance fields
.field private final groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 1

    const-string v0, "groupMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/GroupRawStringMapper;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    return-void
.end method


# virtual methods
.method public generateId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/integrator/GroupRawStringMapper;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "groupMetadata.bookID ?: return null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->seriesItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

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

    .line 94
    sget-object v0, Lcom/amazon/kcp/integrator/GroupRawStringMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/integrator/GroupRawStringMapper;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/integrator/GroupRawStringMapper;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
