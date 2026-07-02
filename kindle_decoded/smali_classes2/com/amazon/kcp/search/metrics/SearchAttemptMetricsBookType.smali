.class public final enum Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;
.super Ljava/lang/Enum;
.source "SearchAttemptMetricsBookType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum AUDIBLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum CLOUD_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum EBOOK:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum EBOOK_SAMPLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum INVALID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum MAGAZINE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum NEWSPAPER:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final Name:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;

.field public static final enum OFFICE_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum PERIODICAL_GROUP:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum PERSONALIZED_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum PERSONAL_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum SERIES:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field public static final enum UNKNOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;


# instance fields
.field private final emitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    const-string v4, "UNKN"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->UNKNOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/4 v2, 0x1

    const-string v3, "EBOOK"

    const-string v4, "EBOK"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->EBOOK:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/4 v2, 0x2

    const-string v3, "EBOOK_SAMPLE"

    const-string v4, "EBSP"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->EBOOK_SAMPLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/4 v2, 0x3

    const-string v3, "PERSONALIZED_DOC"

    const-string v4, "PSNL"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->PERSONALIZED_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/4 v2, 0x4

    const-string v3, "PERSONAL_DOC"

    const-string v4, "PDOC"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->PERSONAL_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/4 v2, 0x5

    const-string v3, "NEWSPAPER"

    const-string v4, "NWPR"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->NEWSPAPER:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/4 v2, 0x6

    const-string v3, "MAGAZINE"

    const-string v4, "MAGZ"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->MAGAZINE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/4 v2, 0x7

    const-string v3, "AUDIBLE"

    const-string v4, "AUDI"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->AUDIBLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/16 v2, 0x8

    const-string v3, "OFFICE_DOC"

    const-string v4, "OFDC"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->OFFICE_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/16 v2, 0x9

    const-string v3, "CLOUD_DOC"

    const-string v4, "CDOC"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->CLOUD_DOC:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/16 v2, 0xa

    const-string v3, "SERIES"

    const-string v4, "SERS"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->SERIES:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/16 v2, 0xb

    const-string v3, "PERIODICAL_GROUP"

    const-string v4, "PERG"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->PERIODICAL_GROUP:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    const/16 v2, 0xc

    const-string v3, "INVALID"

    const-string v4, "INVD"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->INVALID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    new-instance v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->Name:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->emitName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    return-object v0
.end method


# virtual methods
.method public final getEmitName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->emitName:Ljava/lang/String;

    return-object v0
.end method
