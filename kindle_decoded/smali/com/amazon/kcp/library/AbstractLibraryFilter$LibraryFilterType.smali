.class public final enum Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;
.super Ljava/lang/Enum;
.source "AbstractLibraryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/AbstractLibraryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LibraryFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum AUDIBLE:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum BOOKS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum COMICS_UNLIMITED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum DOCS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum DOWNLOADED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum FALKOR:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum IN_PROGRESS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum KINDLE_OWNERS_LENDING_LIBRARY:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum KU_PRIME:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum PERIODICALS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum PERSONAL_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum PUBLIC_LIBRARY_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum READ:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum RENTAL:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum SAMPLES:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

.field public static final enum UNREAD:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v2, 0x0

    const-string v3, "BOOKS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->BOOKS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v2, 0x1

    const-string v3, "SAMPLES"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->SAMPLES:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v2, 0x2

    const-string v3, "AUDIBLE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->AUDIBLE:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v2, 0x3

    const-string v3, "DOCS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->DOCS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v2, 0x4

    const-string v3, "PERIODICALS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PERIODICALS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v2, 0x5

    const-string v3, "READ"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->READ:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v2, 0x6

    const-string v3, "UNREAD"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->UNREAD:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/4 v2, 0x7

    const-string v3, "IN_PROGRESS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->IN_PROGRESS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v2, 0x8

    const-string v3, "KU_PRIME"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->KU_PRIME:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v2, 0x9

    const-string v3, "PUBLIC_LIBRARY_LENDING"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PUBLIC_LIBRARY_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v2, 0xa

    const-string v3, "KINDLE_OWNERS_LENDING_LIBRARY"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->KINDLE_OWNERS_LENDING_LIBRARY:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v2, 0xb

    const-string v3, "PERSONAL_LENDING"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PERSONAL_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v2, 0xc

    const-string v3, "RENTAL"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->RENTAL:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v2, 0xd

    const-string v3, "COMICS_UNLIMITED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->COMICS_UNLIMITED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v2, 0xe

    const-string v3, "FALKOR"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->FALKOR:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    const/16 v2, 0xf

    const-string v3, "DOWNLOADED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->DOWNLOADED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->$VALUES:[Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->$VALUES:[Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    return-object v0
.end method
