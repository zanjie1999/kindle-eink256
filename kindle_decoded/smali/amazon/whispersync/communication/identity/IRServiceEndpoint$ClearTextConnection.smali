.class public final enum Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;
.super Ljava/lang/Enum;
.source "IRServiceEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamazon/whispersync/communication/identity/IRServiceEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClearTextConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

.field public static final enum ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

.field public static final enum NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 116
    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    const/4 v1, 0x0

    const-string v2, "ALLOWED"

    const-string v3, "allowed"

    invoke-direct {v0, v2, v1, v3}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    new-instance v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    const/4 v2, 0x1

    const-string v3, "NOT_ALLOWED"

    const-string/jumbo v4, "not-allowed"

    invoke-direct {v0, v3, v2, v4}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    const/4 v3, 0x2

    new-array v3, v3, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    .line 115
    sget-object v4, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->$VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

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

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->mName:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;
    .locals 3

    if-eqz p0, :cond_2

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    invoke-virtual {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    goto :goto_0

    .line 144
    :cond_0
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    invoke-virtual {v0}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    sget-object p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->NOT_ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    :goto_0
    return-object p0

    .line 147
    :cond_1
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

    .line 137
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "str must not be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;
    .locals 1

    .line 115
    const-class v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    return-object p0
.end method

.method public static values()[Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;
    .locals 1

    .line 115
    sget-object v0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->$VALUES:[Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    invoke-virtual {v0}, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->mName:Ljava/lang/String;

    return-object v0
.end method
