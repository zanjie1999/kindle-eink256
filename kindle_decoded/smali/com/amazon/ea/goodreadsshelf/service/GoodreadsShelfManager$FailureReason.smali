.class public final enum Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;
.super Ljava/lang/Enum;
.source "GoodreadsShelfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

.field public static final enum FAIL_BOOK_ID_NOT_FOUND:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

.field public static final enum FAIL_INVALID_RESPONSE:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

.field public static final enum FAIL_MISSING_INPUT_INFO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

.field public static final enum FAIL_ODOT_NOT_SENT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

.field public static final enum FAIL_UNAUTHORIZED:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

.field public static final enum FAIL_UNKNOWN:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;


# instance fields
.field public final metricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 835
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    const/4 v1, 0x0

    const-string v2, "FAIL_MISSING_INPUT_INFO"

    const-string v3, "MissingInputInfo"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_MISSING_INPUT_INFO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    .line 836
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    const/4 v2, 0x1

    const-string v3, "FAIL_BOOK_ID_NOT_FOUND"

    const-string v4, "BookIDNotFound"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_BOOK_ID_NOT_FOUND:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    .line 837
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    const/4 v3, 0x2

    const-string v4, "FAIL_UNAUTHORIZED"

    const-string v5, "Unauthorized"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNAUTHORIZED:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    .line 838
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    const/4 v4, 0x3

    const-string v5, "FAIL_INVALID_RESPONSE"

    const-string v6, "InvalidJson"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_INVALID_RESPONSE:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    .line 839
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    const/4 v5, 0x4

    const-string v6, "FAIL_ODOT_NOT_SENT"

    const-string v7, "OdotNotSent"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_ODOT_NOT_SENT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    .line 840
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    const/4 v6, 0x5

    const-string v7, "FAIL_UNKNOWN"

    const-string v8, "Unknown"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNKNOWN:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    .line 834
    sget-object v8, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_MISSING_INPUT_INFO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_BOOK_ID_NOT_FOUND:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNAUTHORIZED:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_INVALID_RESPONSE:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_ODOT_NOT_SENT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->$VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

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

    .line 844
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 845
    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static getFromString(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;
    .locals 2

    .line 856
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 862
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->valueOf(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;
    .locals 1

    .line 834
    const-class v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;
    .locals 1

    .line 834
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->$VALUES:[Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-virtual {v0}, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    return-object v0
.end method
