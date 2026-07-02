.class public final enum Lcom/amazon/kindle/content/KindleContentFormat;
.super Ljava/lang/Enum;
.source "KindleContentFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/content/KindleContentFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum FF:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum MOBI:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum MOP:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum TOPAZ:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum YJFF:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum YJMAG:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum YJOP:Lcom/amazon/kindle/content/KindleContentFormat;

.field public static final enum YJUNKNOWN:Lcom/amazon/kindle/content/KindleContentFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/4 v1, 0x0

    const-string v2, "MOBI"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->MOBI:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 18
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/4 v2, 0x1

    const-string v3, "TOPAZ"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->TOPAZ:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 19
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/4 v3, 0x2

    const-string v4, "MOP"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->MOP:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 20
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/4 v4, 0x3

    const-string v5, "FF"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->FF:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 21
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->UNKNOWN:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 22
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/4 v6, 0x5

    const-string v7, "YJLR"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 23
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/4 v7, 0x6

    const-string v8, "YJMAG"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->YJMAG:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 24
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/4 v8, 0x7

    const-string v9, "YJFF"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->YJFF:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 25
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/16 v9, 0x8

    const-string v10, "YJOP"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->YJOP:Lcom/amazon/kindle/content/KindleContentFormat;

    .line 26
    new-instance v0, Lcom/amazon/kindle/content/KindleContentFormat;

    const/16 v10, 0x9

    const-string v11, "YJUNKNOWN"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/content/KindleContentFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->YJUNKNOWN:Lcom/amazon/kindle/content/KindleContentFormat;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/kindle/content/KindleContentFormat;

    .line 16
    sget-object v12, Lcom/amazon/kindle/content/KindleContentFormat;->MOBI:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->TOPAZ:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->MOP:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->FF:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->UNKNOWN:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->YJMAG:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->YJFF:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/kindle/content/KindleContentFormat;->YJOP:Lcom/amazon/kindle/content/KindleContentFormat;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/kindle/content/KindleContentFormat;->$VALUES:[Lcom/amazon/kindle/content/KindleContentFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;
    .locals 5

    .line 36
    sget-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->UNKNOWN:Lcom/amazon/kindle/content/KindleContentFormat;

    if-eqz p0, :cond_d

    .line 39
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 42
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    .line 43
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 47
    sget-object p0, Lcom/amazon/kindle/content/KindleContentFormat;->YJOP:Lcom/amazon/kindle/content/KindleContentFormat;

    :goto_2
    move-object v0, p0

    goto :goto_5

    :cond_2
    if-eqz p0, :cond_3

    .line 49
    sget-object p0, Lcom/amazon/kindle/content/KindleContentFormat;->YJFF:Lcom/amazon/kindle/content/KindleContentFormat;

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 51
    sget-object p0, Lcom/amazon/kindle/content/KindleContentFormat;->YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

    goto :goto_2

    .line 54
    :cond_4
    sget-object p0, Lcom/amazon/kindle/content/KindleContentFormat;->YJUNKNOWN:Lcom/amazon/kindle/content/KindleContentFormat;

    goto :goto_2

    .line 56
    :cond_5
    invoke-static {v1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 57
    sget-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

    goto :goto_5

    .line 58
    :cond_6
    invoke-static {v1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyMagazineMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 60
    sget-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->YJMAG:Lcom/amazon/kindle/content/KindleContentFormat;

    goto :goto_5

    .line 63
    :cond_7
    invoke-static {v1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMopMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 65
    sget-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->MOP:Lcom/amazon/kindle/content/KindleContentFormat;

    goto :goto_5

    .line 67
    :cond_8
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v2

    .line 68
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_9

    if-nez v2, :cond_9

    const/4 p0, 0x1

    goto :goto_3

    :cond_9
    const/4 p0, 0x0

    .line 69
    :goto_3
    invoke-static {v1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isTopazMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 70
    sget-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->TOPAZ:Lcom/amazon/kindle/content/KindleContentFormat;

    goto :goto_5

    :cond_a
    if-nez v2, :cond_b

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_c

    .line 75
    sget-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->MOBI:Lcom/amazon/kindle/content/KindleContentFormat;

    goto :goto_5

    :cond_c
    if-eqz p0, :cond_d

    .line 77
    sget-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->FF:Lcom/amazon/kindle/content/KindleContentFormat;

    :cond_d
    :goto_5
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/content/KindleContentFormat;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/content/KindleContentFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/content/KindleContentFormat;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/content/KindleContentFormat;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/content/KindleContentFormat;->$VALUES:[Lcom/amazon/kindle/content/KindleContentFormat;

    invoke-virtual {v0}, [Lcom/amazon/kindle/content/KindleContentFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/content/KindleContentFormat;

    return-object v0
.end method
