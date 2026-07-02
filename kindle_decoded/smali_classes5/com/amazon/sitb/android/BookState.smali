.class public final enum Lcom/amazon/sitb/android/BookState;
.super Ljava/lang/Enum;
.source "BookState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/sitb/android/BookState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/sitb/android/BookState;

.field public static final enum CANCELING:Lcom/amazon/sitb/android/BookState;

.field public static final enum CLOSED:Lcom/amazon/sitb/android/BookState;

.field public static final enum DOWNLOADED:Lcom/amazon/sitb/android/BookState;

.field public static final enum DOWNLOADING:Lcom/amazon/sitb/android/BookState;

.field public static final enum OWNED:Lcom/amazon/sitb/android/BookState;

.field public static final enum PAYMENT_ERROR:Lcom/amazon/sitb/android/BookState;

.field public static final enum PAYMENT_FAILURE:Lcom/amazon/sitb/android/BookState;

.field public static final enum PURCHASING:Lcom/amazon/sitb/android/BookState;

.field public static final enum RECENTLY_CANCELED:Lcom/amazon/sitb/android/BookState;

.field public static final enum TRANSITIONING:Lcom/amazon/sitb/android/BookState;

.field public static final enum UNKNOWN:Lcom/amazon/sitb/android/BookState;

.field public static final enum UNOWNED:Lcom/amazon/sitb/android/BookState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->UNKNOWN:Lcom/amazon/sitb/android/BookState;

    .line 16
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/4 v2, 0x1

    const-string v3, "CLOSED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->CLOSED:Lcom/amazon/sitb/android/BookState;

    .line 19
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/4 v3, 0x2

    const-string v4, "UNOWNED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->UNOWNED:Lcom/amazon/sitb/android/BookState;

    .line 22
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/4 v4, 0x3

    const-string v5, "PURCHASING"

    invoke-direct {v0, v5, v4}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->PURCHASING:Lcom/amazon/sitb/android/BookState;

    .line 25
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/4 v5, 0x4

    const-string v6, "OWNED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->OWNED:Lcom/amazon/sitb/android/BookState;

    .line 28
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/4 v6, 0x5

    const-string v7, "DOWNLOADING"

    invoke-direct {v0, v7, v6}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->DOWNLOADING:Lcom/amazon/sitb/android/BookState;

    .line 31
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/4 v7, 0x6

    const-string v8, "DOWNLOADED"

    invoke-direct {v0, v8, v7}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->DOWNLOADED:Lcom/amazon/sitb/android/BookState;

    .line 34
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/4 v8, 0x7

    const-string v9, "TRANSITIONING"

    invoke-direct {v0, v9, v8}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->TRANSITIONING:Lcom/amazon/sitb/android/BookState;

    .line 37
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/16 v9, 0x8

    const-string v10, "PAYMENT_FAILURE"

    invoke-direct {v0, v10, v9}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->PAYMENT_FAILURE:Lcom/amazon/sitb/android/BookState;

    .line 40
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/16 v10, 0x9

    const-string v11, "PAYMENT_ERROR"

    invoke-direct {v0, v11, v10}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->PAYMENT_ERROR:Lcom/amazon/sitb/android/BookState;

    .line 43
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/16 v11, 0xa

    const-string v12, "CANCELING"

    invoke-direct {v0, v12, v11}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->CANCELING:Lcom/amazon/sitb/android/BookState;

    .line 46
    new-instance v0, Lcom/amazon/sitb/android/BookState;

    const/16 v12, 0xb

    const-string v13, "RECENTLY_CANCELED"

    invoke-direct {v0, v13, v12}, Lcom/amazon/sitb/android/BookState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/BookState;->RECENTLY_CANCELED:Lcom/amazon/sitb/android/BookState;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/amazon/sitb/android/BookState;

    .line 10
    sget-object v14, Lcom/amazon/sitb/android/BookState;->UNKNOWN:Lcom/amazon/sitb/android/BookState;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/sitb/android/BookState;->CLOSED:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/sitb/android/BookState;->UNOWNED:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/sitb/android/BookState;->PURCHASING:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/sitb/android/BookState;->OWNED:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/sitb/android/BookState;->DOWNLOADING:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/sitb/android/BookState;->DOWNLOADED:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/sitb/android/BookState;->TRANSITIONING:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/sitb/android/BookState;->PAYMENT_FAILURE:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/sitb/android/BookState;->PAYMENT_ERROR:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/sitb/android/BookState;->CANCELING:Lcom/amazon/sitb/android/BookState;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/amazon/sitb/android/BookState;->$VALUES:[Lcom/amazon/sitb/android/BookState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/sitb/android/BookState;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/sitb/android/BookState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/sitb/android/BookState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/sitb/android/BookState;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/sitb/android/BookState;->$VALUES:[Lcom/amazon/sitb/android/BookState;

    invoke-virtual {v0}, [Lcom/amazon/sitb/android/BookState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/sitb/android/BookState;

    return-object v0
.end method
