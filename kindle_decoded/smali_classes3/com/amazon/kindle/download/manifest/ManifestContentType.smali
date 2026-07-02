.class public final enum Lcom/amazon/kindle/download/manifest/ManifestContentType;
.super Ljava/lang/Enum;
.source "ManifestContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/download/manifest/ManifestContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/download/manifest/ManifestContentType;

.field public static final enum KINDLE_AUDIO:Lcom/amazon/kindle/download/manifest/ManifestContentType;

.field public static final enum KINDLE_EBOOK:Lcom/amazon/kindle/download/manifest/ManifestContentType;

.field public static final enum KINDLE_MAGAZINE:Lcom/amazon/kindle/download/manifest/ManifestContentType;

.field public static final enum KINDLE_NEWSPAPER:Lcom/amazon/kindle/download/manifest/ManifestContentType;

.field public static final enum KINDLE_OFFICE:Lcom/amazon/kindle/download/manifest/ManifestContentType;

.field public static final enum KINDLE_PDOC:Lcom/amazon/kindle/download/manifest/ManifestContentType;

.field public static final enum KINDLE_PERSONAL:Lcom/amazon/kindle/download/manifest/ManifestContentType;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/download/manifest/ManifestContentType;


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/4 v1, 0x0

    const-string v2, "KINDLE_EBOOK"

    const-string v3, "kindle.ebook"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/download/manifest/ManifestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_EBOOK:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    .line 9
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/4 v2, 0x1

    const-string v3, "KINDLE_NEWSPAPER"

    const-string v4, "kindle.newspaper"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/download/manifest/ManifestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_NEWSPAPER:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    .line 10
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/4 v3, 0x2

    const-string v4, "KINDLE_MAGAZINE"

    const-string v5, "kindle.magazine"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/download/manifest/ManifestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_MAGAZINE:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    .line 12
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/4 v4, 0x3

    const-string v5, "KINDLE_PDOC"

    const-string v6, "PDOC"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/download/manifest/ManifestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_PDOC:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    .line 13
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/4 v5, 0x4

    const-string v6, "KINDLE_PERSONAL"

    const-string v7, "PSNL"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/download/manifest/ManifestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_PERSONAL:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    .line 15
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/4 v6, 0x5

    const-string v7, "KINDLE_OFFICE"

    const-string v8, "OFFICE_DOC"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/download/manifest/ManifestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_OFFICE:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    .line 16
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/4 v7, 0x6

    const-string v8, "KINDLE_AUDIO"

    const-string v9, "AUDI"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kindle/download/manifest/ManifestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_AUDIO:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN"

    const-string v10, ""

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kindle/download/manifest/ManifestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->UNKNOWN:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/download/manifest/ManifestContentType;

    .line 7
    sget-object v10, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_EBOOK:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_NEWSPAPER:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_MAGAZINE:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_PDOC:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_PERSONAL:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_OFFICE:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_AUDIO:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/download/manifest/ManifestContentType;->$VALUES:[Lcom/amazon/kindle/download/manifest/ManifestContentType;

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
    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->typeString:Ljava/lang/String;

    return-void
.end method

.method public static getBookTypeFromManifestContent(Lcom/amazon/kindle/download/manifest/MDSManifest$Content;)Lcom/amazon/kcp/library/models/BookType;
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getSampling()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sample"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getTypeFromManifestContent(Lcom/amazon/kindle/download/manifest/MDSManifest$Content;)Lcom/amazon/kindle/download/manifest/ManifestContentType;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getBookTypeFromType(Lcom/amazon/kindle/download/manifest/ManifestContentType;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    return-object p0
.end method

.method public static getBookTypeFromType(Lcom/amazon/kindle/download/manifest/ManifestContentType;)Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType$1;->$SwitchMap$com$amazon$kindle$download$manifest$ManifestContentType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 69
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 67
    :pswitch_0
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 65
    :pswitch_1
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 63
    :pswitch_2
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 61
    :pswitch_3
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 59
    :pswitch_4
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 57
    :pswitch_5
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 55
    :pswitch_6
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTypeForBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/download/manifest/ManifestContentType;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 48
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->UNKNOWN:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    .line 46
    :pswitch_0
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_OFFICE:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    .line 44
    :pswitch_1
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_EBOOK:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    .line 42
    :pswitch_2
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_PERSONAL:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    .line 40
    :pswitch_3
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_NEWSPAPER:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    .line 38
    :pswitch_4
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_MAGAZINE:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    .line 36
    :pswitch_5
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_EBOOK:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    .line 34
    :pswitch_6
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_AUDIO:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    .line 32
    :pswitch_7
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->KINDLE_PDOC:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTypeFromManifestContent(Lcom/amazon/kindle/download/manifest/MDSManifest$Content;)Lcom/amazon/kindle/download/manifest/ManifestContentType;
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getTypeFromString(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ManifestContentType;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeFromString(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ManifestContentType;
    .locals 5

    .line 80
    invoke-static {}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->values()[Lcom/amazon/kindle/download/manifest/ManifestContentType;

    move-result-object v0

    .line 81
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    iget-object v4, v3, Lcom/amazon/kindle/download/manifest/ManifestContentType;->typeString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    sget-object p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->UNKNOWN:Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ManifestContentType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/download/manifest/ManifestContentType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->$VALUES:[Lcom/amazon/kindle/download/manifest/ManifestContentType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/download/manifest/ManifestContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/download/manifest/ManifestContentType;

    return-object v0
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestContentType;->typeString:Ljava/lang/String;

    return-object v0
.end method
