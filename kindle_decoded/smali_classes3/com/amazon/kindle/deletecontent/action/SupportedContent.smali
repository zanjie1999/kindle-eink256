.class final enum Lcom/amazon/kindle/deletecontent/action/SupportedContent;
.super Ljava/lang/Enum;
.source "DeleteContentActionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/deletecontent/action/SupportedContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/deletecontent/action/SupportedContent;

.field public static final enum COMIXOLOGY:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

.field public static final enum PERSONAL_LETTER:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

.field public static final enum PURCHASED_BOOK:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

.field public static final enum PURCHASED_MAGAZINE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

.field public static final enum PURCHASED_NEWSPAPER:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

.field public static final enum SAMPLE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

.field public static final enum SEND_TO_KINDLE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

.field public static final enum SIDELOADED:Lcom/amazon/kindle/deletecontent/action/SupportedContent;


# instance fields
.field private final contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field private final isArchivable:Z

.field private final originType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    new-instance v7, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 33
    sget-object v4, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v2, "SAMPLE"

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v6, "Sample"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V

    sput-object v7, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->SAMPLE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 34
    sget-object v11, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v9, "SEND_TO_KINDLE"

    const/4 v10, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->SEND_TO_KINDLE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 35
    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v4, "SIDELOADED"

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->SIDELOADED:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 36
    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->PERSONAL_LETTER:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v4, "PERSONAL_LETTER"

    const/4 v5, 0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->PERSONAL_LETTER:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 37
    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v4, "PURCHASED_BOOK"

    const/4 v5, 0x4

    const/4 v7, 0x1

    const-string v8, "Purchase"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->PURCHASED_BOOK:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 38
    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v4, "PURCHASED_NEWSPAPER"

    const/4 v5, 0x5

    const-string v8, "Single Issue"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->PURCHASED_NEWSPAPER:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 39
    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v4, "PURCHASED_MAGAZINE"

    const/4 v5, 0x6

    const-string v8, "Single Issue"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->PURCHASED_MAGAZINE:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    .line 40
    sget-object v6, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    const-string v4, "COMIXOLOGY"

    const/4 v5, 0x7

    const-string v8, "Comixology"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/deletecontent/action/SupportedContent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->COMIXOLOGY:Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->$VALUES:[Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/krx/content/ContentType;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iput-boolean p4, p0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->isArchivable:Z

    iput-object p5, p0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->originType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/deletecontent/action/SupportedContent;
    .locals 1

    const-class v0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/deletecontent/action/SupportedContent;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->$VALUES:[Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    invoke-virtual {v0}, [Lcom/amazon/kindle/deletecontent/action/SupportedContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/deletecontent/action/SupportedContent;

    return-object v0
.end method


# virtual methods
.method public final isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 5

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->isArchivable:Z

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v4

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 49
    :goto_1
    iget-object v4, p0, Lcom/amazon/kindle/deletecontent/action/SupportedContent;->originType:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    return v2
.end method
