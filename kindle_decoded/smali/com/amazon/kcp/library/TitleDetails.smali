.class public final Lcom/amazon/kcp/library/TitleDetails;
.super Ljava/lang/Object;
.source "TitleDetails.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTitleDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TitleDetails.kt\ncom/amazon/kcp/library/TitleDetails\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
.end annotation


# instance fields
.field private final details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/BookTitleDetail;",
            ">;"
        }
    .end annotation
.end field

.field private endYear:Ljava/lang/String;

.field private partNumber:Ljava/lang/String;

.field private publicationRun:Ljava/lang/String;

.field private startYear:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    new-instance v0, Lcom/amazon/kcp/library/TitleDetailsParser;

    invoke-direct {v0}, Lcom/amazon/kcp/library/TitleDetailsParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/TitleDetailsParser;->deserializeTitleDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/library/TitleDetails;->details:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/TitleDetails;->loadValues(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private final loadValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/BookTitleDetail;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/BookTitleDetail;

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookTitleDetail;->getType()Lcom/amazon/kcp/library/DetailType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/TitleDetails$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookTitleDetail;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->endYear:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookTitleDetail;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->startYear:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookTitleDetail;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->partNumber:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookTitleDetail;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->subtitle:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {v0}, Lcom/amazon/kcp/library/BookTitleDetail;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->title:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/library/TitleDetails;->startYear:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->startYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/TitleDetails;->publicationRun:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->endYear:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/TitleDetails;->publicationRun:Ljava/lang/String;

    :cond_6
    return-void
.end method


# virtual methods
.method public final getPartNumber()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->partNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicationRun()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->publicationRun:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/library/TitleDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TitleDetails{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/amazon/kcp/library/TitleDetails;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v2, p0, Lcom/amazon/kcp/library/TitleDetails;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", partNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v2, p0, Lcom/amazon/kcp/library/TitleDetails;->partNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startYear=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/amazon/kcp/library/TitleDetails;->startYear:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", endYear=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lcom/amazon/kcp/library/TitleDetails;->endYear:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", publicationRun=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v2, p0, Lcom/amazon/kcp/library/TitleDetails;->publicationRun:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
