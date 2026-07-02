.class public final enum Lamazon/whispersync/communication/identity/EndpointIdentity$Type;
.super Ljava/lang/Enum;
.source "EndpointIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamazon/whispersync/communication/identity/EndpointIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamazon/whispersync/communication/identity/EndpointIdentity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

.field public static final enum DEVICE:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

.field public static final enum SERVICE:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

.field public static final enum URL:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    const/4 v1, 0x0

    const-string v2, "DEVICE"

    invoke-direct {v0, v2, v1}, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->DEVICE:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    .line 25
    new-instance v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    const/4 v2, 0x1

    const-string v3, "SERVICE"

    invoke-direct {v0, v3, v2}, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->SERVICE:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    .line 26
    new-instance v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    const/4 v3, 0x2

    const-string v4, "URL"

    invoke-direct {v0, v4, v3}, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->URL:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    const/4 v4, 0x3

    new-array v4, v4, [Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    .line 23
    sget-object v5, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->DEVICE:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    aput-object v5, v4, v1

    sget-object v1, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->SERVICE:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->$VALUES:[Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/identity/EndpointIdentity$Type;
    .locals 1

    .line 23
    const-class v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    return-object p0
.end method

.method public static values()[Lamazon/whispersync/communication/identity/EndpointIdentity$Type;
    .locals 1

    .line 23
    sget-object v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->$VALUES:[Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    invoke-virtual {v0}, [Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    return-object v0
.end method
