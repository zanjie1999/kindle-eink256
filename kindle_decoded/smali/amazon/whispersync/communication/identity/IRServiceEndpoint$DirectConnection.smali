.class public final enum Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;
.super Ljava/lang/Enum;
.source "IRServiceEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamazon/whispersync/communication/identity/IRServiceEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirectConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

.field public static final enum ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

.field public static final enum NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

.field public static final enum REQUIRED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    const/4 v1, 0x0

    const-string v2, "REQUIRED"

    const-string/jumbo v3, "required"

    invoke-direct {v0, v2, v1, v3}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->REQUIRED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    const/4 v2, 0x1

    const-string v3, "ALLOWED"

    const-string v4, "allowed"

    invoke-direct {v0, v3, v2, v4}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    const/4 v3, 0x2

    const-string v4, "NOT_ALLOWED"

    const-string/jumbo v5, "not-allowed"

    invoke-direct {v0, v4, v3, v5}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    const/4 v4, 0x3

    new-array v4, v4, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    .line 25
    sget-object v5, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->REQUIRED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    aput-object v5, v4, v1

    sget-object v1, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->$VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->mName:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;
    .locals 3

    if-eqz p0, :cond_3

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->REQUIRED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    invoke-virtual {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->REQUIRED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    invoke-virtual {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    sget-object p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    invoke-virtual {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    sget-object p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    :goto_0
    return-object p0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "str: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cannot be parsed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "str must not be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;
    .locals 1

    .line 25
    const-class v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    return-object p0
.end method

.method public static values()[Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;
    .locals 1

    .line 25
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->$VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    invoke-virtual {v0}, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;->mName:Ljava/lang/String;

    return-object v0
.end method
