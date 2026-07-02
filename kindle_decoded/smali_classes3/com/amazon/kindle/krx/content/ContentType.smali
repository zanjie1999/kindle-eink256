.class public final enum Lcom/amazon/kindle/krx/content/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/content/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum AUDIBLE:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum BOOK:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum OFFICE:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum PDF:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum PDOC:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum PERSONAL_LETTER:Lcom/amazon/kindle/krx/content/ContentType;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 9
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v1, 0x0

    const-string v2, "BOOK"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x1

    const-string v3, "BOOK_SAMPLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v3, 0x2

    const-string v4, "MAGAZINE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v4, 0x3

    const-string v5, "NEWSPAPER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v5, 0x4

    const-string v6, "PDOC"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v6, 0x5

    const-string v7, "PDF"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->PDF:Lcom/amazon/kindle/krx/content/ContentType;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v7, 0x6

    const-string v8, "PERSONAL_LETTER"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->PERSONAL_LETTER:Lcom/amazon/kindle/krx/content/ContentType;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v8, 0x7

    const-string v9, "OFFICE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->OFFICE:Lcom/amazon/kindle/krx/content/ContentType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/16 v9, 0x8

    const-string v10, "AUDIBLE"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->AUDIBLE:Lcom/amazon/kindle/krx/content/ContentType;

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/content/ContentType;

    const/16 v10, 0x9

    const-string v11, "UNKNOWN"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/krx/content/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/kindle/krx/content/ContentType;

    .line 7
    sget-object v12, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->PDF:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->PERSONAL_LETTER:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->OFFICE:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->AUDIBLE:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/kindle/krx/content/ContentType;->$VALUES:[Lcom/amazon/kindle/krx/content/ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/krx/content/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->$VALUES:[Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/content/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method
