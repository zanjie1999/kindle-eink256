.class public final enum Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
.super Ljava/lang/Enum;
.source "BookType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/socialsharing/service/protocol/BookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

.field public static final enum BLOG:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BLOG"
    .end annotation
.end field

.field public static final enum BOOK:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EBOK"
    .end annotation
.end field

.field public static final enum BOOK_SAMPLE:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EBSP"
    .end annotation
.end field

.field public static final enum FEED:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FEED"
    .end annotation
.end field

.field public static final enum MAGAZINE:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MAGZ"
    .end annotation
.end field

.field public static final enum NEWSPAPER:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NWPR"
    .end annotation
.end field

.field public static final enum PDOC:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PDOC"
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    const/4 v1, 0x0

    const-string v2, "BOOK"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->BOOK:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    .line 18
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    const/4 v2, 0x1

    const-string v3, "BOOK_SAMPLE"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->BOOK_SAMPLE:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    .line 20
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    const/4 v3, 0x2

    const-string v4, "NEWSPAPER"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->NEWSPAPER:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    .line 22
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    const/4 v4, 0x3

    const-string v5, "PDOC"

    invoke-direct {v0, v5, v4, v5}, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->PDOC:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    const/4 v5, 0x4

    const-string v6, "MAGAZINE"

    invoke-direct {v0, v6, v5, v6}, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->MAGAZINE:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    const/4 v6, 0x5

    const-string v7, "FEED"

    invoke-direct {v0, v7, v6, v7}, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->FEED:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    .line 28
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    const/4 v7, 0x6

    const-string v8, "BLOG"

    invoke-direct {v0, v8, v7, v8}, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->BLOG:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    .line 14
    sget-object v9, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->BOOK:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->BOOK_SAMPLE:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->NEWSPAPER:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->PDOC:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->MAGAZINE:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->FEED:Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->$VALUES:[Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/socialsharing/service/protocol/BookType;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->$VALUES:[Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;->name:Ljava/lang/String;

    return-object v0
.end method
