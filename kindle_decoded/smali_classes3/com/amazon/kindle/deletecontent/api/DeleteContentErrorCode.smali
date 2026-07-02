.class public final enum Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;
.super Ljava/lang/Enum;
.source "DeleteContentApiModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

.field public static final enum APP_INTERNAL_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

.field public static final enum CONNECTION_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

.field public static final enum SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

.field public static final enum UNSUPPORTED_MARKETPLACE:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    new-instance v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const/4 v2, 0x0

    const-string v3, "CONNECTION_ERROR"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->CONNECTION_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const/4 v2, 0x1

    const-string v3, "SERVER_ERROR"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->SERVER_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const/4 v2, 0x2

    const-string v3, "APP_INTERNAL_ERROR"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const/4 v2, 0x3

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->UNKNOWN:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    const/4 v2, 0x4

    const-string v3, "UNSUPPORTED_MARKETPLACE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->UNSUPPORTED_MARKETPLACE:Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->$VALUES:[Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;
    .locals 1

    const-class v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->$VALUES:[Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    return-object v0
.end method
