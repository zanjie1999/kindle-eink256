.class public final enum Lcom/amazon/kindle/krx/content/BookFormat;
.super Ljava/lang/Enum;
.source "BookFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/content/BookFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/content/BookFormat;

.field public static final enum MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

.field public static final enum MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

.field public static final enum MOP:Lcom/amazon/kindle/krx/content/BookFormat;

.field public static final enum PDF:Lcom/amazon/kindle/krx/content/BookFormat;

.field public static final enum TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

.field public static final enum YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

.field public static final enum YJ_MAGAZINE:Lcom/amazon/kindle/krx/content/BookFormat;


# instance fields
.field private mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v1, 0x0

    const-string v2, "MOBI7"

    const-string v3, "application/x-mobipocket-ebook"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/krx/content/BookFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v2, 0x1

    const-string v3, "MOBI8"

    const-string v4, "application/x-mobi8-ebook"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/krx/content/BookFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v3, 0x2

    const-string v4, "TOPAZ"

    const-string v5, "application/x-topaz-ebook"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/krx/content/BookFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v4, 0x3

    const-string v5, "MOP"

    const-string v6, "application/x-mobipocket-ebook-mop"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/krx/content/BookFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->MOP:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v5, 0x4

    const-string v6, "PDF"

    const-string v7, "application/x-pdf"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/krx/content/BookFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->PDF:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v6, 0x5

    const-string v7, "YJBINARY"

    const-string v8, "application/x-kfx-ebook"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/krx/content/BookFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 20
    new-instance v0, Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v7, 0x6

    const-string v8, "YJ_MAGAZINE"

    const-string v9, "application/x-kfx-magazine"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kindle/krx/content/BookFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->YJ_MAGAZINE:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kindle/krx/content/BookFormat;

    .line 12
    sget-object v9, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->MOP:Lcom/amazon/kindle/krx/content/BookFormat;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->PDF:Lcom/amazon/kindle/krx/content/BookFormat;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kindle/krx/content/BookFormat;->$VALUES:[Lcom/amazon/kindle/krx/content/BookFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/amazon/kindle/krx/content/BookFormat;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static getBookFormatFromMimeType(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookFormat;
    .locals 5

    .line 38
    invoke-static {}, Lcom/amazon/kindle/krx/content/BookFormat;->values()[Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    iget-object v4, v3, Lcom/amazon/kindle/krx/content/BookFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    sget-object p0, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookFormat;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/BookFormat;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/content/BookFormat;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->$VALUES:[Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/content/BookFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/content/BookFormat;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookFormat;->mimeType:Ljava/lang/String;

    return-object v0
.end method
