.class public final enum Lcom/amazon/kcp/application/PerfMarker;
.super Ljava/lang/Enum;
.source "FTUEPerformanceMetricsReporter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/PerfMarker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_AUDIBLE_FIRST_SYNCED:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_COLLECTIONS_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_COLLECTIONS_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_FIRST_BOOK_DRAWN:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_HOME_FEED_REQUEST_END:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_HOME_FEED_REQUEST_START:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_MAR_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_MAR_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_STORE_LOAD_END:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum FTUE_STORE_LOAD_START:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum REGISTRATION:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum SMD_FTUE_FIRST_BATCH_PARSE_END:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum SMD_FTUE_FIRST_BATCH_PARSE_START:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum SMD_FTUE_FIRST_BATCH_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

.field public static final enum SMD_FTUE_FIRST_BATCH_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/amazon/kcp/application/PerfMarker;

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/4 v2, 0x0

    const-string v3, "REGISTRATION"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->REGISTRATION:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/4 v2, 0x1

    const-string v3, "SMD_FTUE_FIRST_BATCH_SYNC_START"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/4 v2, 0x2

    const-string v3, "SMD_FTUE_FIRST_BATCH_SYNC_END"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/4 v2, 0x3

    const-string v3, "SMD_FTUE_FIRST_BATCH_PARSE_START"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_PARSE_START:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/4 v2, 0x4

    const-string v3, "SMD_FTUE_FIRST_BATCH_PARSE_END"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->SMD_FTUE_FIRST_BATCH_PARSE_END:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/4 v2, 0x5

    const-string v3, "PARTIAL_FTUE_COVER_DOWNLOAD_START"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/4 v2, 0x6

    const-string v3, "PARTIAL_FTUE_COVER_DOWNLOAD_END"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/4 v2, 0x7

    const-string v3, "FTUE_HOME_FEED_REQUEST_START"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_HOME_FEED_REQUEST_START:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0x8

    const-string v3, "FTUE_HOME_FEED_REQUEST_END"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_HOME_FEED_REQUEST_END:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0x9

    const-string v3, "FTUE_COLLECTIONS_SYNC_START"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_COLLECTIONS_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0xa

    const-string v3, "FTUE_COLLECTIONS_SYNC_END"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_COLLECTIONS_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0xb

    const-string v3, "FTUE_FIRST_BOOK_DRAWN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_FIRST_BOOK_DRAWN:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0xc

    const-string v3, "FTUE_AUDIBLE_FIRST_SYNCED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_AUDIBLE_FIRST_SYNCED:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0xd

    const-string v3, "FTUE_MAR_SYNC_START"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_MAR_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0xe

    const-string v3, "FTUE_MAR_SYNC_END"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_MAR_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0xf

    const-string v3, "FTUE_STORE_LOAD_START"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_STORE_LOAD_START:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/application/PerfMarker;

    const/16 v2, 0x10

    const-string v3, "FTUE_STORE_LOAD_END"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/application/PerfMarker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_STORE_LOAD_END:Lcom/amazon/kcp/application/PerfMarker;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/application/PerfMarker;->$VALUES:[Lcom/amazon/kcp/application/PerfMarker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/PerfMarker;
    .locals 1

    const-class v0, Lcom/amazon/kcp/application/PerfMarker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/PerfMarker;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/PerfMarker;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/application/PerfMarker;->$VALUES:[Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/PerfMarker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/PerfMarker;

    return-object v0
.end method
