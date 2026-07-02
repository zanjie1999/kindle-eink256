.class public final enum Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;
.super Ljava/lang/Enum;
.source "TodoItem.java"

# interfaces
.implements Lcom/amazon/kcp/application/models/internal/TodoItem$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/TodoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BasicType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;",
        ">;",
        "Lcom/amazon/kcp/application/models/internal/TodoItem$Type;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum AAF:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum APNX:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum ASC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum ASCG:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum AUCM:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum AUDI:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum OFFICE_DOC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum PDOC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum PHL:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum SNAX:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum SPHS:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum V2:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field public static final enum WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

.field static basicTypeToBookTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/application/models/internal/TodoItem$Type;",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;"
        }
    .end annotation
.end field

.field static bookTypeToBasicTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/models/BookType;",
            "Lcom/amazon/kcp/application/models/internal/TodoItem$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private correspondingBookType:Lcom/amazon/kcp/library/models/BookType;

.field private isDocument:Z

.field private isReaderContent:Z

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 269
    new-instance v6, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    const-string v1, "BOOK"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V

    sput-object v6, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 273
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    sget-object v10, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    const-string v8, "BOOK_SAMPLE"

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 277
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    const-string v2, "NEWSPAPER"

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 281
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    sget-object v10, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    const-string v8, "MAGAZINE"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 285
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    const-string v2, "PERSONAL"

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 290
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    sget-object v10, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    const-string v8, "OFFICE_DOC"

    const/4 v9, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->OFFICE_DOC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 294
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "NAME_UPDATE"

    const/4 v3, 0x6

    const-string v4, "NAMS"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 298
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v8, "CRED_UPDATE"

    const/4 v9, 0x7

    const-string v10, "CRED"

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 303
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "REMOTE_COMMAND"

    const/16 v3, 0x8

    const-string v4, "CMND"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 308
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v8, "ACCOUNT_SECRETS"

    const/16 v9, 0x9

    const-string v10, "ACSR"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 313
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "WATERMARKS_SNAPSHOT"

    const/16 v3, 0xa

    const-string v4, "SNAP"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 318
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v8, "SOFTWARE_UPDATE"

    const/16 v9, 0xb

    const-string v10, "KCPU"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 323
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "SCFG"

    const/16 v3, 0xc

    const-string v4, "SCFG"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 327
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    sget-object v10, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    const-string v8, "PDOC"

    const/16 v9, 0xd

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->PDOC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 331
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "SPHS"

    const/16 v3, 0xe

    const-string v4, "SPHS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SPHS:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 335
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v8, "APNX"

    const/16 v9, 0xf

    const-string v10, "APNX"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->APNX:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 341
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "AUCM"

    const/16 v3, 0x10

    const-string v4, "AUCM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->AUCM:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 346
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    sget-object v10, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    const-string v8, "AUDI"

    const/16 v9, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->AUDI:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 351
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "AAF"

    const/16 v3, 0x12

    const-string v4, "AAF"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->AAF:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 356
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v8, "V2"

    const/16 v9, 0x13

    const-string v10, "V2"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->V2:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 361
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "ASC"

    const/16 v3, 0x14

    const-string v4, "ASC"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->ASC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 366
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v8, "ASCG"

    const/16 v9, 0x15

    const-string v10, "ASCG"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->ASCG:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 371
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "PHL"

    const/16 v3, 0x16

    const-string v4, "PHL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->PHL:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 376
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v8, "SNAX"

    const/16 v9, 0x17

    const-string v10, "SNAX"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SNAX:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 381
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "UNKNOWN"

    const/16 v3, 0x18

    const-string v4, "UNKNOWN"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v1, 0x19

    new-array v1, v1, [Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 265
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->OFFICE_DOC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->PDOC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SPHS:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->APNX:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->AUCM:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->AUDI:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->AAF:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->V2:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->ASC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->ASCG:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->PHL:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SNAX:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->$VALUES:[Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->bookTypeToBasicTypeMap:Ljava/util/Map;

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->basicTypeToBookTypeMap:Ljava/util/Map;

    .line 439
    invoke-static {}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->values()[Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 440
    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->getCorrespondingBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 442
    sget-object v5, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->bookTypeToBasicTypeMap:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v5, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->basicTypeToBookTypeMap:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/library/models/BookType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/BookType;",
            "ZZ)V"
        }
    .end annotation

    .line 389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 390
    invoke-virtual {p3}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->s:Ljava/lang/String;

    .line 391
    iput-boolean p4, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->isDocument:Z

    .line 392
    iput-boolean p5, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->isReaderContent:Z

    .line 393
    iput-object p3, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->correspondingBookType:Lcom/amazon/kcp/library/models/BookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 396
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 397
    iput-object p3, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->s:Ljava/lang/String;

    .line 398
    iput-boolean p4, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->isDocument:Z

    .line 399
    iput-boolean p5, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->isReaderContent:Z

    const/4 p1, 0x0

    .line 400
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->correspondingBookType:Lcom/amazon/kcp/library/models/BookType;

    return-void
.end method

.method static getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 432
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->basicTypeToBookTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->basicTypeToBookTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/BookType;

    return-object p0

    .line 435
    :cond_0
    sget-object p0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    return-object p0
.end method

.method static getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    .locals 1

    .line 424
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->bookTypeToBasicTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->bookTypeToBasicTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    return-object p0

    .line 427
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/models/internal/TodoItem;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Converting an unknown book type!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;
    .locals 1

    .line 265
    const-class v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;
    .locals 1

    .line 265
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->$VALUES:[Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    return-object v0
.end method


# virtual methods
.method getCorrespondingBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->correspondingBookType:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method isDocument()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->isDocument:Z

    return v0
.end method

.method isReaderContent()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->isReaderContent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->s:Ljava/lang/String;

    return-object v0
.end method
