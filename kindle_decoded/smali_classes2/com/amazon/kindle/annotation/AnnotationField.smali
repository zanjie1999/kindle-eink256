.class public final enum Lcom/amazon/kindle/annotation/AnnotationField;
.super Ljava/lang/Enum;
.source "AnnotationField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/annotation/AnnotationField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum ACTION:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final ALL_FIELDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/annotation/AnnotationField;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum IS_AVAILABLE:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum LOCATION:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum STATE:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum TIME:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum USERID:Lcom/amazon/kindle/annotation/AnnotationField;

.field public static final enum USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 35
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/4 v1, 0x0

    const-string v2, "USERID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 36
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/4 v2, 0x1

    const-string v3, "BOOKID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 37
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/4 v3, 0x2

    const-string v4, "TYPE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 38
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/4 v4, 0x3

    const-string v5, "START_POS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 39
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/4 v5, 0x4

    const-string v6, "END_POS"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 40
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/4 v6, 0x5

    const-string v7, "USER_TEXT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 41
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/4 v7, 0x6

    const-string v8, "ACTION"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->ACTION:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 42
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/4 v8, 0x7

    const-string v9, "POS_START_PAGE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 43
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v9, 0x8

    const-string v10, "TIME"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->TIME:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 44
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v10, 0x9

    const-string v11, "LOCATION"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->LOCATION:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 45
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v11, 0xa

    const-string v12, "BOOK_TEXT"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 46
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v12, 0xb

    const-string v13, "STATE"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 47
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v13, 0xc

    const-string v14, "METADATA"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 48
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v14, 0xd

    const-string v15, "START_POS_LF"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 49
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v15, 0xe

    const-string v14, "END_POS_LF"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 50
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v14, 0xf

    const-string v15, "IS_AVAILABLE"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/annotation/AnnotationField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->IS_AVAILABLE:Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v15, 0x10

    new-array v15, v15, [Lcom/amazon/kindle/annotation/AnnotationField;

    .line 12
    sget-object v16, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v16, v15, v1

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v3

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v4

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v5

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v6

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->ACTION:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v7

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v8

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->TIME:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v9

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->LOCATION:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v10

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v11

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v12

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    aput-object v1, v15, v13

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v2, 0xd

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    const/16 v2, 0xe

    aput-object v1, v15, v2

    aput-object v0, v15, v14

    sput-object v15, Lcom/amazon/kindle/annotation/AnnotationField;->$VALUES:[Lcom/amazon/kindle/annotation/AnnotationField;

    .line 56
    invoke-static {}, Lcom/amazon/kindle/annotation/AnnotationField;->values()[Lcom/amazon/kindle/annotation/AnnotationField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->ALL_FIELDS:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/annotation/AnnotationField;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/annotation/AnnotationField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/annotation/AnnotationField;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->$VALUES:[Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v0}, [Lcom/amazon/kindle/annotation/AnnotationField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/annotation/AnnotationField;

    return-object v0
.end method
