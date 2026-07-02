.class public final enum Lcom/amazon/kindle/inapp/notifications/util/TapActionType;
.super Ljava/lang/Enum;
.source "TapActionType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/inapp/notifications/util/TapActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum DOWNLOAD_SAMPLE:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum OPEN_ASIN:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum OPEN_BROWSE_NODE:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum OPEN_KINDLE_UNLIMITED:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum OPEN_LIBRARY:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum OPEN_PAGE_ID:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum OPEN_PERIODICAL_EDITION:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum OPEN_STORE_DETAIL_PAGE:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum OPEN_STORE_URL:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

.field public static final enum UNSUPPORTED:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/4 v2, 0x0

    const-string v3, "OPEN_STORE_DETAIL_PAGE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_STORE_DETAIL_PAGE:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/4 v2, 0x1

    const-string v3, "OPEN_BROWSE_NODE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_BROWSE_NODE:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/4 v2, 0x2

    const-string v3, "OPEN_PAGE_ID"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_PAGE_ID:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/4 v2, 0x3

    const-string v3, "OPEN_STORE_URL"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_STORE_URL:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/4 v2, 0x4

    const-string v3, "OPEN_KINDLE_UNLIMITED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_KINDLE_UNLIMITED:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/4 v2, 0x5

    const-string v3, "DOWNLOAD_SAMPLE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->DOWNLOAD_SAMPLE:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/4 v2, 0x6

    const-string v3, "OPEN_LIBRARY"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_LIBRARY:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/4 v2, 0x7

    const-string v3, "OPEN_PERIODICAL_EDITION"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_PERIODICAL_EDITION:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/16 v2, 0x8

    const-string v3, "OPEN_ASIN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_ASIN:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    const/16 v2, 0x9

    const-string v3, "UNSUPPORTED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->UNSUPPORTED:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->$VALUES:[Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/util/TapActionType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/inapp/notifications/util/TapActionType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->$VALUES:[Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-object v0
.end method
