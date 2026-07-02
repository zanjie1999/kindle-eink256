.class public final enum Lcom/amazon/kindle/cover/CoverField;
.super Ljava/lang/Enum;
.source "CoverField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cover/CoverField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cover/CoverField;

.field public static final ALL_FIELDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cover/CoverField;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BOOKID:Lcom/amazon/kindle/cover/CoverField;

.field public static final enum COVERID:Lcom/amazon/kindle/cover/CoverField;

.field public static final enum COVER_SIZE:Lcom/amazon/kindle/cover/CoverField;

.field public static final enum COVER_TYPE:Lcom/amazon/kindle/cover/CoverField;

.field public static final enum FILE_PATH:Lcom/amazon/kindle/cover/CoverField;

.field public static final enum LAST_RETRY_DATE:Lcom/amazon/kindle/cover/CoverField;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/amazon/kindle/cover/CoverField;

    const/4 v1, 0x0

    const-string v2, "BOOKID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/cover/CoverField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/CoverField;->BOOKID:Lcom/amazon/kindle/cover/CoverField;

    .line 16
    new-instance v0, Lcom/amazon/kindle/cover/CoverField;

    const/4 v2, 0x1

    const-string v3, "COVERID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/cover/CoverField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/CoverField;->COVERID:Lcom/amazon/kindle/cover/CoverField;

    .line 17
    new-instance v0, Lcom/amazon/kindle/cover/CoverField;

    const/4 v3, 0x2

    const-string v4, "FILE_PATH"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/cover/CoverField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/CoverField;->FILE_PATH:Lcom/amazon/kindle/cover/CoverField;

    .line 18
    new-instance v0, Lcom/amazon/kindle/cover/CoverField;

    const/4 v4, 0x3

    const-string v5, "COVER_SIZE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/cover/CoverField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/CoverField;->COVER_SIZE:Lcom/amazon/kindle/cover/CoverField;

    .line 19
    new-instance v0, Lcom/amazon/kindle/cover/CoverField;

    const/4 v5, 0x4

    const-string v6, "COVER_TYPE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/cover/CoverField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/CoverField;->COVER_TYPE:Lcom/amazon/kindle/cover/CoverField;

    .line 20
    new-instance v0, Lcom/amazon/kindle/cover/CoverField;

    const/4 v6, 0x5

    const-string v7, "LAST_RETRY_DATE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/cover/CoverField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/CoverField;->LAST_RETRY_DATE:Lcom/amazon/kindle/cover/CoverField;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/cover/CoverField;

    .line 14
    sget-object v8, Lcom/amazon/kindle/cover/CoverField;->BOOKID:Lcom/amazon/kindle/cover/CoverField;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/cover/CoverField;->COVERID:Lcom/amazon/kindle/cover/CoverField;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/cover/CoverField;->FILE_PATH:Lcom/amazon/kindle/cover/CoverField;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/cover/CoverField;->COVER_SIZE:Lcom/amazon/kindle/cover/CoverField;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/cover/CoverField;->COVER_TYPE:Lcom/amazon/kindle/cover/CoverField;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/cover/CoverField;->$VALUES:[Lcom/amazon/kindle/cover/CoverField;

    .line 22
    invoke-static {}, Lcom/amazon/kindle/cover/CoverField;->values()[Lcom/amazon/kindle/cover/CoverField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cover/CoverField;->ALL_FIELDS:Ljava/util/Collection;

    .line 28
    invoke-static {}, Lcom/amazon/kindle/cover/CoverField;->getAllFieldsAsArray()[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getAllFieldNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {}, Lcom/amazon/kindle/cover/CoverField;->values()[Lcom/amazon/kindle/cover/CoverField;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 34
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAllFieldsAsArray()[Ljava/lang/String;
    .locals 2

    .line 46
    invoke-static {}, Lcom/amazon/kindle/cover/CoverField;->getAllFieldNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cover/CoverField;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/cover/CoverField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cover/CoverField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cover/CoverField;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/cover/CoverField;->$VALUES:[Lcom/amazon/kindle/cover/CoverField;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cover/CoverField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cover/CoverField;

    return-object v0
.end method
