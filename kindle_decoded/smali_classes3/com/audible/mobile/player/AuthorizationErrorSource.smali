.class public final enum Lcom/audible/mobile/player/AuthorizationErrorSource;
.super Ljava/lang/Enum;
.source "AuthorizationErrorSource.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/audible/mobile/player/Error;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/AuthorizationErrorSource;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/audible/mobile/player/Error;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum ABORTRED:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/player/AuthorizationErrorSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DATASOURCE:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum DEVICE:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum INVALID_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum PARAMETER:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum RENEWED_VOUCHER_EXPIRED:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum REQUEST:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum UNSPECIFIED:Lcom/audible/mobile/player/AuthorizationErrorSource;

.field public static final enum VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/AuthorizationErrorSource;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 14
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/4 v1, 0x0

    const-string v2, "PARAMETER"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->PARAMETER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 19
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/4 v2, 0x1

    const-string v3, "DEVICE"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->DEVICE:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 24
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/4 v3, 0x2

    const-string v4, "DATASOURCE"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->DATASOURCE:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 29
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/4 v4, 0x3

    const-string v5, "REQUEST"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->REQUEST:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 34
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/4 v5, 0x4

    const-string v6, "ABORTRED"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->ABORTRED:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 39
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/4 v6, 0x5

    const-string v7, "VOUCHER_NOT_FOUND"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 44
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/4 v7, 0x6

    const-string v8, "FAILED_TO_FETCH_VOUCHER"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 49
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/4 v8, 0x7

    const-string v9, "INVALID_VOUCHER"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->INVALID_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 54
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/16 v9, 0x8

    const-string v10, "FAILED_TO_DECRYPT_VOUCHER"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 59
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/16 v10, 0x9

    const-string v11, "RENEWED_VOUCHER_EXPIRED"

    invoke-direct {v0, v11, v10}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->RENEWED_VOUCHER_EXPIRED:Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 64
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/16 v11, 0xa

    const-string v12, "UNSPECIFIED"

    invoke-direct {v0, v12, v11}, Lcom/audible/mobile/player/AuthorizationErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->UNSPECIFIED:Lcom/audible/mobile/player/AuthorizationErrorSource;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 9
    sget-object v13, Lcom/audible/mobile/player/AuthorizationErrorSource;->PARAMETER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v13, v12, v1

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->DEVICE:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v2

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->DATASOURCE:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v3

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->REQUEST:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v4

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->ABORTRED:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v5

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v6

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v7

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->INVALID_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v8

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v9

    sget-object v1, Lcom/audible/mobile/player/AuthorizationErrorSource;->RENEWED_VOUCHER_EXPIRED:Lcom/audible/mobile/player/AuthorizationErrorSource;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/audible/mobile/player/AuthorizationErrorSource;->$VALUES:[Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 77
    new-instance v0, Lcom/audible/mobile/player/AuthorizationErrorSource$1;

    invoke-direct {v0}, Lcom/audible/mobile/player/AuthorizationErrorSource$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/AuthorizationErrorSource;
    .locals 1

    .line 9
    const-class v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/AuthorizationErrorSource;
    .locals 1

    .line 9
    sget-object v0, Lcom/audible/mobile/player/AuthorizationErrorSource;->$VALUES:[Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/AuthorizationErrorSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/AuthorizationErrorSource;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
