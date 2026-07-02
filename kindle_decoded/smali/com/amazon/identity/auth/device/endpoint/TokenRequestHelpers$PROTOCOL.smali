.class public final enum Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROTOCOL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

.field public static final enum HTTPS:Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    const/4 v1, 0x0

    const-string v2, "HTTPS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;->HTTPS:Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    aput-object v0, v2, v1

    .line 16
    sput-object v2, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;->$VALUES:[Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;->$VALUES:[Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
